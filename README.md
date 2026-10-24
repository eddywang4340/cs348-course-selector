# cs348-course-selector

## Milestone 0 Database Setup

This section demonstrates that the app can connect to a database and query rows from it. The table used here (`courses`) is a **simplified toy table for testing the connection only**, and is **not** the project's final schema, which will be designed in a later milestone.

The database is local MySQL (see "Local MySQL Database Setup" below) -- run that section first so `CoursePlanner` exists.

### 1. Create the toy table and load sample rows

```
mysql -u root CoursePlanner < backend/schema.sql
mysql -u root CoursePlanner < backend/seed.sql
```

(add `-p` if your local MySQL user has a password).

### 2. Configure environment variables

Copy `backend/.env.example` to `backend/.env` and adjust if needed (defaults match local MySQL with no password):

```
cp backend/.env.example backend/.env
```

### 3. Install dependencies and run the app

Backend:

```
cd backend
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
```

Frontend (in a separate terminal):

```
cd frontend
npm install
npm run dev
```

### 4. Confirm the database query works

Open the frontend URL printed by `npm run dev` (typically `http://localhost:5173`) and click "Send request". If the connection and query succeed, the page will list the 3 seeded courses (e.g. `CS 348: Introduction to Database Management`). If something is misconfigured, a "Could not read a response from the backend." message will be shown instead.

## Local MySQL Database Setup

Separately from the Milestone 0 Supabase/Postgres demo above, the project's actual schema lives in a single local MySQL database, `CoursePlanner`. `database/schema.sql` drops and recreates `CoursePlanner` itself, then `database/seed-sample.sql` loads the hand-written sample dataset and `database/seed-production.sql` loads the real UW subject/breadth-category reference data.

### Prerequisites

- MySQL server installed and running locally (e.g. `brew install mysql` on macOS, then `brew services start mysql`).
- The `mysql` CLI available on your `PATH`.

### 1. Configure credentials (optional)

Copy `.env.example` to `.env` in the repo root and adjust if your local MySQL setup needs non-default values:

```
cp .env.example .env
```

```env
MYSQL_HOST=127.0.0.1
MYSQL_PORT=3306
MYSQL_USER=root
MYSQL_PASSWORD=
```

Set `MYSQL_PASSWORD` to match your local MySQL user (leave blank if that user has no password). `.env` is git-ignored; `.env.example` is tracked.

### 2. Run the setup script

```
./scripts/setup-db.sh
```

This drops and recreates `CoursePlanner` (via `database/schema.sql`), then seeds it from `database/seed-sample.sql` and `database/seed-production.sql`. Every run resets the database — there's no separate `--reset` flag, since `schema.sql` always starts from a clean slate.

### 3. Verifying the database exists

```
mysql -u root -e "SHOW TABLES IN CoursePlanner;"
```

(add `-p` if your local MySQL user requires a password).

### 4. Adding schema and seed data

Table/constraint/index definitions live in [`database/schema.sql`](database/schema.sql), hand-written sample rows in [`database/seed-sample.sql`](database/seed-sample.sql), and real reference data in [`database/seed-production.sql`](database/seed-production.sql) — keep the two seed files free of overlapping rows, since both load into the same database.

### Reproducing this setup on a new machine

1. `git clone` the repo.
2. Install and start MySQL locally.
3. Optionally `cp .env.example .env` and adjust credentials.
4. Run `./scripts/setup-db.sh`.