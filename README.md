# cs348-course-selector

## Milestone 0 Database Setup

This section demonstrates that the app can connect to a database and query rows from it. The table used here (`courses`) is a **simplified toy table for testing the connection only**, and is **not** the project's final schema, which will be designed in a later milestone.

The database is hosted on [Supabase](https://supabase.com), which is a managed PostgreSQL database.

### 1. Create the sample table and load sample rows

In your Supabase project, open the SQL editor and run the contents of [`backend/schema.sql`](backend/schema.sql) to create the `courses` table, then run [`backend/seed.sql`](backend/seed.sql) to insert 3 sample rows.

### 2. Configure environment variables

Copy `backend/.env.example` to `backend/.env` and set `DATABASE_URL` to your Supabase project's PostgreSQL connection string (Supabase dashboard → Project Settings → Database → Connection string).

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