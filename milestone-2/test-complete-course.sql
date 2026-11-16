-- ============================================================
-- Feature R8 (Milestone 2 - Production): Complete a course on the checklist
--
-- Performance measurement and query execution plan on production dataset.
-- Demonstrates query execution, EXPLAIN plan, and timing on production data.
--
-- Query template:
--   UPDATE Checklist ch
--   JOIN Course c ON ch.course_id = c.course_id
--   SET ch.status = 'completed'
--   WHERE ch.user_id = ?
--     AND c.subject = ?
--     AND c.catalog_number = ?;
-- ============================================================

USE CoursePlanner;

-- Test 1: User 1 (y84huang) completes CS 349 (planned -> completed) on their checklist
SET @user_id = 1, @subject = 'CS', @catalog_number = '349';

-- Verify current status
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

-- Execution Plan on production data
EXPLAIN
UPDATE Checklist ch
JOIN Course c ON ch.course_id = c.course_id
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

-- Perform update
UPDATE Checklist ch
JOIN Course c ON ch.course_id = c.course_id
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

-- Verify updated status
SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

-- 5 Timed Runs (initial update above serves as warm-up)
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';

-- Timing measurement (median of 5 runs after warm-up)
SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R8_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = \'completed\' WHERE ch.user_id = 1%'
ORDER BY EVENT_ID DESC LIMIT 5;

