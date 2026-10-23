-- ============================================================
-- Feature R8: Complete a course on the checklist
-- A student finds a course on their checklist (e.g. "CS 348") and marks
-- that course as completed (status = 'completed').
--
-- Query template (the app runs this as a prepared statement):
--
--   UPDATE Checklist ch
--   NATURAL JOIN Course c
--   SET ch.status = 'completed'
--   WHERE ch.user_id = ?          -- logged-in student
--     AND c.subject = ?           -- e.g. 'CS'
--     AND c.catalog_number = ?;   -- e.g. '348'
--
-- Assumes the seed data was just loaded (schema.sql, seed.sql).
-- Tests use User 1 (y84huang).
-- ============================================================

USE CoursePlanner;

-- Before: User 1's (pre-existing) checklist
-- Expected: CS 246 in_progress, CS 348 planned, CS 350 completed
SET @user_id = 1, @subject = 'CS';
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 1: Course is on the checklist (planned -> completed)
-- Expected: Rows matched: 1  Changed: 1
-- CS 348's status is changed to 'completed' for User 1

UPDATE Checklist ch
NATURAL JOIN Course c
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = '348';

-- Test 1: Print the updated checklist
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 2: Course is already completed
-- Expected: Rows matched: 1  Changed: 0 
-- CS 350's status is not changed because it is already completed for User 1
SET @user_id = 1, @subject = 'CS';
UPDATE Checklist ch
NATURAL JOIN Course c
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = '350';

-- Test 2: Print the updated checklist
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 3: Course is currently being taken (in_progress -> completed)
-- Expected: Rows matched: 1  Changed: 1
-- CS 246's status is changed to 'completed' for User 1
SET @user_id = 1, @subject = 'CS';
UPDATE Checklist ch
NATURAL JOIN Course c
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = '246';

-- Final: User 1's (updated) checklist
-- Expected: CS 246 completed, CS 348 completed, CS 350 completed
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;