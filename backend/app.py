import os
import pymysql
from pymysql.cursors import DictCursor
from dotenv import load_dotenv
from flask import Flask, jsonify, request

load_dotenv()
app = Flask(__name__)

# Milestone 0: toy table used only to test the database connection.
# See schema.sql / seed.sql in this folder. This is NOT the final schema.
TABLE_NAME = "courses"


def get_connection():
    return pymysql.connect(
        host=os.environ.get("MYSQL_HOST", "127.0.0.1"),
        port=int(os.environ.get("MYSQL_PORT", 3306)),
        user=os.environ.get("MYSQL_USER", "root"),
        password=os.environ.get("MYSQL_PASSWORD", ""),
        database=os.environ["MYSQL_DATABASE"],
        cursorclass=DictCursor,
    )


@app.get("/api/hello")
def hello():
    conn = get_connection()
    try:
        with conn.cursor() as cur:
            cur.execute(f"SELECT * FROM `{TABLE_NAME}`")
            rows = cur.fetchall()
    finally:
        conn.close()

    return jsonify({"courses": rows})


@app.get("/api/courses/search")
def search_course():
    subject = (request.args.get("subject") or "").strip().upper()
    catalog_number = (request.args.get("catalog_number") or "").strip().upper()
    if not subject or not catalog_number:
        return jsonify({"error": "Subject and catalog number are required."}), 400

    conn = get_connection()
    try:
        with conn.cursor() as cur:
            cur.execute(
                """
                SELECT course_id, subject, catalog_number, title, description, units, min_term
                FROM Course
                WHERE subject = %s
                  AND catalog_number = %s
                """,
                (subject, catalog_number),
            )
            row = cur.fetchone()
    finally:
        conn.close()

    if row is None:
        return jsonify({"course": None}), 404

    if row["units"] is not None:
        row["units"] = float(row["units"])
    return jsonify({"course": row})


# Feature R7: fetch the prerequisites and anti-requisites of a course.
# Queries match the report: the prereq query from R7-b, and the optimized
# UNION ALL anti-requisite query from R7-c ("after"). Anti-reqs are stored once
# per pair (course_id < antireq_course_id), so each branch covers one side.
PREREQ_SQL = """
    SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
    FROM Course c0
    JOIN Prereq p ON p.course_id = c0.course_id
    JOIN Course c ON c.course_id = p.prereq_course_id
    WHERE c0.subject = %s
      AND c0.catalog_number = %s
"""

ANTIREQ_SQL = """
    SELECT c.course_id, c.subject, c.catalog_number, c.title
    FROM Course c0
    JOIN Antireq a ON a.course_id = c0.course_id
    JOIN Course c ON c.course_id = a.antireq_course_id
    WHERE c0.subject = %s AND c0.catalog_number = %s
    UNION ALL
    SELECT c.course_id, c.subject, c.catalog_number, c.title
    FROM Course c0
    JOIN Antireq a ON a.antireq_course_id = c0.course_id
    JOIN Course c ON c.course_id = a.course_id
    WHERE c0.subject = %s AND c0.catalog_number = %s
"""


@app.get("/api/courses/requisites")
def course_requisites():
    subject = (request.args.get("subject") or "").strip().upper()
    catalog_number = (request.args.get("catalog_number") or "").strip().upper()
    if not subject or not catalog_number:
        return jsonify({"error": "Subject and catalog number are required."}), 400

    conn = get_connection()
    try:
        with conn.cursor() as cur:
            # Both requisite queries return empty for an unknown course, so check
            # existence first to tell "not found" apart from "no requisites".
            cur.execute(
                "SELECT course_id, subject, catalog_number, title FROM Course "
                "WHERE subject = %s AND catalog_number = %s",
                (subject, catalog_number),
            )
            course = cur.fetchone()
            if course is None:
                return jsonify({"course": None}), 404

            cur.execute(PREREQ_SQL, (subject, catalog_number))
            prereqs = cur.fetchall()
            cur.execute(ANTIREQ_SQL, (subject, catalog_number) * 2)
            antireqs = cur.fetchall()
    finally:
        conn.close()

    return jsonify({"course": course, "prereqs": prereqs, "antireqs": antireqs})


# Feature R8: mark a course on a user's checklist as completed.
# The UPDATE is the query template from R8-b in the report.
COMPLETE_SQL = """
    UPDATE Checklist ch
    NATURAL JOIN Course c
    SET ch.status = 'completed'
    WHERE ch.user_id = %s
      AND c.subject = %s
      AND c.catalog_number = %s
"""

CHECKLIST_SQL = """
    SELECT c.course_id, c.subject, c.catalog_number, c.title, ch.status
    FROM Checklist ch
    JOIN Course c ON c.course_id = ch.course_id
    WHERE ch.user_id = %s
    ORDER BY c.subject, c.catalog_number
"""


@app.get("/api/checklist")
def get_checklist():
    user_id = request.args.get("user_id", type=int)
    if user_id is None:
        return jsonify({"error": "user_id is required."}), 400

    conn = get_connection()
    try:
        with conn.cursor() as cur:
            cur.execute(CHECKLIST_SQL, (user_id,))
            rows = cur.fetchall()
    finally:
        conn.close()

    return jsonify({"checklist": rows})


@app.post("/api/checklist/complete")
def complete_course():
    body = request.get_json(silent=True) or {}
    try:
        user_id = int(body.get("user_id"))
    except (TypeError, ValueError):
        user_id = None
    subject = str(body.get("subject") or "").strip().upper()
    catalog_number = str(body.get("catalog_number") or "").strip().upper()
    if user_id is None or not subject or not catalog_number:
        return jsonify({"error": "user_id, subject and catalog number are required."}), 400

    conn = get_connection()
    try:
        with conn.cursor() as cur:
            # rowcount is the number of rows actually changed (MySQL's default).
            changed = cur.execute(COMPLETE_SQL, (user_id, subject, catalog_number))
            conn.commit()

            if changed == 1:
                outcome = "completed"
            else:
                # 0 changed: either the row is already completed, or the course
                # is not on this user's checklist. Look it up to tell them apart.
                cur.execute(
                    "SELECT ch.status FROM Checklist ch "
                    "JOIN Course c ON c.course_id = ch.course_id "
                    "WHERE ch.user_id = %s AND c.subject = %s AND c.catalog_number = %s",
                    (user_id, subject, catalog_number),
                )
                outcome = "already_completed" if cur.fetchone() else "not_on_checklist"
    finally:
        conn.close()

    messages = {
        "completed": "This course has been successfully completed.",
        "already_completed": "This course is already completed.",
        "not_on_checklist": "Error: this course is not on your checklist.",
    }
    status_code = 404 if outcome == "not_on_checklist" else 200
    return jsonify({"outcome": outcome, "message": messages[outcome]}), status_code


if __name__ == "__main__":
    app.run(port=5000, debug=True)
