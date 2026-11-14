-- ============================================================
-- Feature R9 (Milestone 2 - Production): Add, update, or remove a course on the checklist
--
-- Performance measurement and query execution plans on production dataset.
-- Demonstrates Add, Update, and Remove mutations, EXPLAIN plans, and timings.
--
-- Query templates:
--   -- Add:
--   INSERT INTO Checklist (user_id, course_id, status)
--   SELECT ?, c.course_id, ?
--   FROM Course c
--   WHERE c.subject = ? AND c.catalog_number = ?;
--
--   -- Update:
--   UPDATE Checklist
--   SET status = ?
--   WHERE user_id = ? AND course_id = ?;
--
--   -- Remove:
--   DELETE FROM Checklist
--   WHERE user_id = ?
--     AND course_id = (SELECT course_id FROM Course WHERE subject = ? AND catalog_number = ?);
-- ============================================================

USE CoursePlanner;

SET @user_id = 2, @subject = 'CS', @catalog_number = '245';

-- ------------------------------------------------------------
-- Test 1: Add a course to the checklist (CS 245 as planned)
-- ------------------------------------------------------------
EXPLAIN
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'planned'
FROM Course c
WHERE c.subject = @subject
  AND c.catalog_number = @catalog_number;

INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'planned'
FROM Course c
WHERE c.subject = @subject
  AND c.catalog_number = @catalog_number
ON DUPLICATE KEY UPDATE status = 'planned';

-- Verify added row
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id AND c.subject = @subject AND c.catalog_number = @catalog_number;

-- ------------------------------------------------------------
-- Test 2: Update status on checklist (planned -> in_progress)
-- ------------------------------------------------------------
EXPLAIN
UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = @user_id
  AND course_id = (
      SELECT course_id
      FROM Course
      WHERE subject = @subject AND catalog_number = @catalog_number
  );

UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = @user_id
  AND course_id = (
      SELECT course_id
      FROM Course
      WHERE subject = @subject AND catalog_number = @catalog_number
  );

-- Verify updated row
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id AND c.subject = @subject AND c.catalog_number = @catalog_number;

-- ------------------------------------------------------------
-- Test 3: Remove course from checklist
-- ------------------------------------------------------------
EXPLAIN
DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (
      SELECT course_id
      FROM Course
      WHERE subject = @subject AND catalog_number = @catalog_number
  );

DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (
      SELECT course_id
      FROM Course
      WHERE subject = @subject AND catalog_number = @catalog_number
  );

-- Verify deletion (Empty set expected)
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id AND c.subject = @subject AND c.catalog_number = @catalog_number;

-- ------------------------------------------------------------
-- Timing measurements (1 warm-up + 5 timed runs each)
-- ------------------------------------------------------------
-- Add timing
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';
INSERT INTO Checklist (user_id, course_id, status) SELECT 2, c.course_id, 'planned' FROM Course c WHERE c.subject = 'CS' AND c.catalog_number = '245' ON DUPLICATE KEY UPDATE status = 'planned';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R9_add_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'INSERT INTO Checklist (user_id, course_id, status) SELECT 2%'
ORDER BY EVENT_ID DESC LIMIT 5;

-- Update timing
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
UPDATE Checklist SET status = 'in_progress' WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R9_update_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'UPDATE Checklist SET status = \'in_progress\' WHERE user_id = 2%'
ORDER BY EVENT_ID DESC LIMIT 5;

-- Delete timing
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');
DELETE FROM Checklist WHERE user_id = 2 AND course_id = (SELECT course_id FROM Course WHERE subject = 'CS' AND catalog_number = '245');

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R9_delete_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'DELETE FROM Checklist WHERE user_id = 2%'
ORDER BY EVENT_ID DESC LIMIT 5;

