import os
import psycopg
from psycopg import sql
from psycopg.rows import dict_row
from dotenv import load_dotenv
from flask import Flask, jsonify

load_dotenv()
app = Flask(__name__)

# Milestone 0: toy table used only to test the database connection.
# See schema.sql / seed.sql in this folder. This is NOT the final schema.
TABLE_NAME = "courses"


@app.get("/api/hello")
def hello():
    with psycopg.connect(os.environ["DATABASE_URL"], row_factory=dict_row) as conn:
        with conn.cursor() as cur:
            cur.execute(sql.SQL("SELECT * FROM {}").format(sql.Identifier(TABLE_NAME)))
            rows = cur.fetchall()

    return jsonify({"courses": rows})


if __name__ == "__main__":
    app.run(port=5000, debug=True)