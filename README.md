# cs348-course-selector

## Implemented features

| Feature | What it does | Backend endpoint ([backend/app.py](backend/app.py)) | Frontend component ([frontend/src/main.jsx](frontend/src/main.jsx)) |
|---|---|---|---|
| 1 (R6) | Search a course by subject and catalog number | `GET /api/courses/search?subject=&catalog_number=` | `CourseSearchFeature` |
| 2 (R7) | Show a course's prerequisites and anti-requisites (anti-reqs are matched on either side of the stored pair, using the optimized `UNION ALL` query from R7-c) | `GET /api/courses/requisites?subject=&catalog_number=` | `RequisitesFeature` |
| 3 (R8) | Mark a course on a user's checklist as completed, telling apart "completed", "already completed", and "not on your checklist" | `POST /api/checklist/complete` (JSON body `user_id`, `subject`, `catalog_number`), plus `GET /api/checklist?user_id=` to display the checklist | `CompleteCourseFeature` |

Feature 3 changes data; run `./scripts/setup-db.sh` to reset it.

## Running the application

### 1. Create and load the database

Follow "Local MySQL Database Setup" below (`./scripts/setup-db.sh`) so `CoursePlanner` exists and holds the sample and production data.

### 2. Configure environment variables

Copy `backend/.env.example` to `backend/.env` and adjust if needed (defaults match local MySQL with no password, and `MYSQL_DATABASE=CoursePlanner`):

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

### 4. Use the app

Open the frontend URL printed by `npm run dev` (typically `http://localhost:5173`). Each implemented feature (see the table above) is shown as its own row: type in the inputs, or click a **Try:** preset to run one of the report's test cases. If the backend or database is misconfigured, the page shows "Could not read a response from the backend."

The Milestone 0 toy table (`backend/schema.sql`, `backend/seed.sql`) and its `GET /api/hello` endpoint are kept only as the original connection test; the features above do not use them.

## Local MySQL Database Setup

The project's schema lives in a single local MySQL database, `CoursePlanner`. `database/schema.sql` drops and recreates `CoursePlanner`. `database/seed-sample.sql` loads the hand-written sample dataset. Each production seed file inserts into one table:

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

### Production dataset: sources

The production data is committed as the SQL seed files above, so `./scripts/setup-db.sh` loads it directly; no download is needed to reproduce the database.

| Seed file | Source |
|---|---|
| `seed-production-courses.sql`, `-prereqs.sql`, `-coreqs.sql`, `-antireqs.sql` | Fetched from the University of Waterloo Open Data API (https://openapi.data.uwaterloo.ca/): undergraduate courses scheduled at least once from Fall 2024 through Winter 2027, and their requisites. |
| `seed-production.sql` (`SubjectCategory`) | CS breadth and depth requirements: https://cs.uwaterloo.ca/current/programs/require/2011-2012/depthAndBreadth |
| `seed-production-user.sql` (`User`, `Checklist`) | Transcribed by hand from y84huang's filled-in 2023–2024 BCS checklist |

### Reproducing this setup on a new machine

1. `git clone` the repo.
2. Install and start MySQL locally.
3. Optionally `cp .env.example .env` and adjust credentials.
4. Run `./scripts/setup-db.sh`.
