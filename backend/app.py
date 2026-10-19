import os
import pymysql
from pymysql.cursors import DictCursor
from dotenv import load_dotenv
from flask import Flask, jsonify

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


if __name__ == "__main__":
    app.run(port=5000, debug=True)
