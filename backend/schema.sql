-- Milestone 0: toy table used only to test the database connection.
-- This is NOT the final project schema.
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_code TEXT NOT NULL,
    course_name TEXT NOT NULL
);
