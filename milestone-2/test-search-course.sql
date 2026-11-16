-- ============================================================
-- Feature R6 (Milestone 2 - Production): Search a course by subject and catalog number
--
-- Performance measurement and query execution plan on production dataset.
-- Demonstrates query execution, EXPLAIN plan, warm-up, and 5-run timing
-- retrieved from performance_schema.events_statements_history.
--
-- Query template:
--   SELECT course_id, subject, catalog_number, title, description, units, min_term
--   FROM Course
--   WHERE subject = ?
--     AND catalog_number = ?;
-- ============================================================

USE CoursePlanner;

-- Test 1: Search for an existing core course (CS 348)
SET @subject = 'CS', @catalog_number = '348';

SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Test 1: Query Execution Plan on production data
EXPLAIN
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Test 1: Performance Timing (1 warm-up run + 5 timed runs in same session)
-- Warm-up:
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
-- 5 Timed Runs:
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';

-- Retrieve statement execution times in milliseconds
SELECT ROUND(TIMER_WAIT/1e9, 3) AS `ms (last 5 runs, median reported in report)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = \'CS\' AND catalog_number = \'348\'%'
ORDER BY EVENT_ID DESC LIMIT 5;

