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

Separately from the Milestone 0 toy table above, the project's schema lives in a single local MySQL database, `CoursePlanner`. `database/schema.sql` drops and recreates `CoursePlanner`. `database/seed-sample.sql` loads the hand-written sample dataset. Each production seed file inserts into one table:

- `database/seed-production.sql` fills `SubjectCategory`
- `database/seed-production-courses.sql` fills `Course`
- `database/seed-production-prereqs.sql` fills `Prereq`
- `database/seed-production-coreqs.sql` fills `Coreq`
- `database/seed-production-antireqs.sql` fills `Antireq`
- `database/seed-production-user.sql` fills `User` and `Checklist`

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

This drops and recreates `CoursePlanner` (via `database/schema.sql`), then loads `database/seed-sample.sql` and each production seed file. Every run resets the database

### 3. Verifying the database exists

```
mysql -u root -e "SHOW TABLES IN CoursePlanner;"
```

(add `-p` if your local MySQL user requires a password).

### 4. Adding schema and seed data

Table definitions live in [`database/schema.sql`](database/schema.sql). The hand-written sample lives in [`database/seed-sample.sql`](database/seed-sample.sql). Production rows are one file per table:

- [`database/seed-production.sql`](database/seed-production.sql) (`SubjectCategory`)
- [`database/seed-production-courses.sql`](database/seed-production-courses.sql) (`Course`)
- [`database/seed-production-prereqs.sql`](database/seed-production-prereqs.sql) (`Prereq`)
- [`database/seed-production-coreqs.sql`](database/seed-production-coreqs.sql) (`Coreq`)
- [`database/seed-production-antireqs.sql`](database/seed-production-antireqs.sql) (`Antireq`)
- [`database/seed-production-user.sql`](database/seed-production-user.sql) (`User` and `Checklist`)

`alt_group` is stored on each `Prereq` row. The same number means you only need one of those courses. A different number is a separate requirement.

Production `course_id` values start at 10000 so they do not collide with the sample courses at ids 1–11. The sample courses keep their hand-written prerequisite rows. A production course can still list a sample course as its prerequisite. Every production course is stored as `0.50` units, and `min_term` is null except where the sample seed already set one.

### Reproducing this setup on a new machine

1. `git clone` the repo.
2. Install and start MySQL locally.
3. Optionally `cp .env.example .env` and adjust credentials.
4. Run `./scripts/setup-db.sh`.
