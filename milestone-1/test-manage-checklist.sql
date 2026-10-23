-- ============================================================
-- Feature R9: Add / update / remove a course on the checklist
-- A student adds a course to their checklist (e.g. "CS 245") with a
-- status, changes the status of a course already on their checklist,
-- or removes a course from their checklist.
--
-- Query templates (the app runs these as prepared statements):
--
--   -- Add
--   INSERT INTO Checklist (user_id, course_id, status)
--   SELECT ?, c.course_id, ?
--   FROM Course c
--   WHERE c.subject = ? 
--     AND c.catalog_number = ?;
--
--   -- Update status
--   UPDATE Checklist
--   SET status = ?
--   WHERE user_id = ?
--     AND course_id = ?;
--
--   -- Remove
--   DELETE FROM Checklist
--   WHERE user_id = ?
--     AND course_id = (SELECT course_id
--                      FROM Course
--                      WHERE subject = ?
--                        AND catalog_number = ?);
--
-- Assumes the seed data was just loaded (database/schema.sql, database/seed-sample.sql).
-- ============================================================

USE CoursePlanner;

-- Before: User 2's (pre-existing) checklist
-- Expected: CS 135 completed, CS 136 in_progress
SET @user_id = 2, @subject = 'CS';
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 1: Add a course that exists and is not on the checklist (CS 245 as planned)
-- Expected: Query OK, 1 row affected  Records: 1  Duplicates: 0
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'planned'
FROM Course c
WHERE c.subject = @subject
  AND c.catalog_number = '245';

-- Test 1: Print the updated checklist
-- Expected: CS 135 completed, CS 136 in_progress, CS 245 planned
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 2: Update the status of a course on the checklist (CS 245, course_id 3: planned -> in_progress)
-- Expected: Rows matched: 1  Changed: 1
UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = @user_id
  AND course_id = 3;

-- Test 2: Print the updated checklist
-- Expected: CS 135 completed, CS 136 in_progress, CS 245 in_progress
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 3: Remove a course from the checklist (CS 245)
-- Expected: Query OK, 1 row affected
DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (SELECT course_id
                   FROM Course
                   WHERE subject = @subject
                     AND catalog_number = '245');

-- Test 3: Print the updated checklist
-- Expected: CS 135 completed, CS 136 in_progress
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 4: Add a course that is already on the checklist (CS 135)
-- Expected: ERROR 1062 duplicate entry on the primary key; checklist unchanged
-- App shows "This course is already on your checklist."
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'planned'
FROM Course c
WHERE c.subject = @subject
  AND c.catalog_number = '135';

-- Test 5: Add a course that does not exist (CS 999)
-- Expected: Query OK, 0 rows affected  Records: 0
-- App shows "Course not found."
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'planned'
FROM Course c
WHERE c.subject = @subject
  AND c.catalog_number = '999';

-- Test 6: Remove a course that is not on the checklist (CS 348)
-- Expected: Query OK, 0 rows affected
-- App shows "This course is not on your checklist."
DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (SELECT course_id
                   FROM Course
                   WHERE subject = @subject
                     AND catalog_number = '348');

-- Final: User 2's checklist
-- Expected: CS 135 completed, CS 136 in_progress (same as the start)
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;