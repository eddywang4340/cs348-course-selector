# cs348-course-selector

## Milestone 0 Database Setup

This section demonstrates that the app can connect to a database and query rows from it. The table used here (`courses`) is a **simplified toy table for testing the connection only**, and is **not** the project's final schema, which will be designed in a later milestone.

The database is local MySQL (see "Local MySQL Database Setup" below) -- run that section first so `cs348_sample` exists.

### 1. Create the toy table and load sample rows

```
mysql -u root cs348_sample < backend/schema.sql
mysql -u root cs348_sample < backend/seed.sql
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

Separately from the Milestone 0 Supabase/Postgres demo above, the project's actual schema is being developed against **local MySQL**, with two databases sharing one schema:

- `cs348_sample` — a small dataset for development and testing.
- `cs348_production` — a larger dataset (eventually ~3,000 University of Waterloo courses and related entities).

The schema is not finalized yet, so `database/schema.sql` and the seed files are currently empty scaffolds — this section documents the setup workflow for once they're filled in.

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
SAMPLE_DB=cs348_sample
PRODUCTION_DB=cs348_production
```

Set `MYSQL_PASSWORD` to match your local MySQL user (leave blank if that user has no password). `.env` is git-ignored; `.env.example` is tracked.

### 2. Run the setup script

```
./scripts/setup-db.sh
```

This creates `cs348_sample` and `cs348_production` if they don't already exist, applies `database/schema.sql` to both, and seeds `cs348_sample` from `database/seed-sample.sql` and `cs348_production` from `database/seed-production.sql`. It's safe to re-run — by default it never drops existing databases or data.

### 3. Resetting both databases

To wipe and recreate both databases from scratch (e.g. after a schema change):

```
./scripts/setup-db.sh --reset
```

This **permanently deletes all data** in both `cs348_sample` and `cs348_production` immediately, with no confirmation prompt.

### 4. Verifying the databases exist

```
mysql -u root --execute "SHOW DATABASES LIKE 'cs348_%';"
```

(add `-p` if your local MySQL user requires a password).

### 5. Adding schema and seed data

As the relational schema is designed, add table/constraint/index definitions to [`database/schema.sql`](database/schema.sql) (shared by both databases), hand-written sample rows to [`database/seed-sample.sql`](database/seed-sample.sql), and the larger real dataset to [`database/seed-production.sql`](database/seed-production.sql) (this may later be replaced by a separate ETL/Python seeding script).

### Reproducing this setup on a new machine

1. `git clone` the repo.
2. Install and start MySQL locally.
3. Optionally `cp .env.example .env` and adjust credentials.
4. Run `./scripts/setup-db.sh`.