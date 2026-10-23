-- ============================================================
-- Feature R6: Search a course by subject and catalog number
-- A user searches for a specific course by providing the subject code
-- (e.g. "CS") and catalog number (e.g. "348") to retrieve its
-- full course details (title, description, units, and minimum term).
--
-- Query template (the app runs this as a prepared statement):
--
--   SELECT course_id, subject, catalog_number, title, description, units, min_term
--   FROM Course
--   WHERE subject = ?
--     AND catalog_number = ?;
--
-- Assumes the seed data was just loaded (database/schema.sql, database/seed-sample.sql).
-- ============================================================

USE CoursePlanner;

-- Test 1: Search for an existing core course with a minimum term requirement
-- Expected: 1 row returned (CS 348, "Introduction to Database Management", 0.50 units, min_term 3A)
SET @subject = 'CS', @catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Test 2: Search for an existing elective/humanities course with no minimum term restriction
-- Expected: 1 row returned (COMMST 223, "Public Speaking", 0.50 units, min_term NULL)
SET @subject = 'COMMST', @catalog_number = '223';
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Test 3: Search for an enriched section course with an alphabetic suffix in catalog number
-- Expected: 1 row returned (CS 246E, "Object-Oriented Software Development (Enriched)", 0.50 units, min_term NULL)
SET @subject = 'CS', @catalog_number = '246E';
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Test 4: Search for a course that does not exist in the database
-- Expected: Empty set (0 rows returned)
SET @subject = 'CS', @catalog_number = '999';
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;
