-- ============================================================
-- CS 348 Fall 2026 - Milestone 2: test-production.sql
-- Covers Features R6, R7, R8, R9, and R10
-- Demonstrates query executions, EXPLAIN plans, and performance timings on production data.
-- ============================================================

USE CoursePlanner;

-- ============================================================
-- Feature R6: Search a course by subject and catalog number
-- ============================================================

SET @subject = 'CS', @catalog_number = '348';

-- Baseline Query Execution
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Query Execution Plan
EXPLAIN
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = @subject
  AND catalog_number = @catalog_number;

-- Statement Timing (1 warm-up run + 5 timed runs)
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';
SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = 'CS' AND catalog_number = '348';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R6_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'SELECT course_id, subject, catalog_number, title, description, units, min_term FROM Course WHERE subject = \'CS\' AND catalog_number = \'348\'%'
ORDER BY EVENT_ID DESC LIMIT 5;


-- ============================================================
-- Feature R7: Fetch prerequisites & anti-requisites of a course
-- Includes BEFORE vs. AFTER optimization pair for symmetric anti-requisite lookup.
-- ============================================================

SET @subject = 'CS', @catalog_number = '246';

-- 1. Prerequisites Query
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

EXPLAIN
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

-- 2. Anti-requisites Query: BEFORE Optimization
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
  AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

EXPLAIN
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
  AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

-- Benchmark Before Optimization (warmup + 5 timed runs)
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id) JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id) AND c.course_id != c0.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R7_before_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)%'
ORDER BY EVENT_ID DESC LIMIT 5;

-- 3. Anti-requisites Query: AFTER Optimization (UNION ALL Rewrite)
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON a.course_id = c0.course_id
JOIN Course c ON c.course_id = a.antireq_course_id
WHERE c0.subject = @subject AND c0.catalog_number = @catalog_number
UNION ALL
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON a.antireq_course_id = c0.course_id
JOIN Course c ON c.course_id = a.course_id
WHERE c0.subject = @subject AND c0.catalog_number = @catalog_number;

EXPLAIN
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON a.course_id = c0.course_id
JOIN Course c ON c.course_id = a.antireq_course_id
WHERE c0.subject = @subject AND c0.catalog_number = @catalog_number
UNION ALL
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON a.antireq_course_id = c0.course_id
JOIN Course c ON c.course_id = a.course_id
WHERE c0.subject = @subject AND c0.catalog_number = @catalog_number;

-- Benchmark After Optimization (warmup + 5 timed runs)
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';
SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.course_id = c0.course_id JOIN Course c ON c.course_id = a.antireq_course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246' UNION ALL SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id JOIN Course c ON c.course_id = a.course_id WHERE c0.subject = 'CS' AND c0.catalog_number = '246';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R7_after_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE '%UNION ALL%SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id%'
ORDER BY EVENT_ID DESC LIMIT 5;


-- ============================================================
-- Feature R8: Complete a course on the checklist
-- ============================================================

SET @user_id = 1, @subject = 'CS', @catalog_number = '349';

SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id AND c.subject = @subject AND c.catalog_number = @catalog_number;

-- R8 Timing (5 runs after initial warm-up update above)
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R8_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = \'completed\' WHERE ch.user_id = 1%'
ORDER BY EVENT_ID DESC LIMIT 5;

EXPLAIN
UPDATE Checklist ch
JOIN Course c ON ch.course_id = c.course_id
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

UPDATE Checklist ch
JOIN Course c ON ch.course_id = c.course_id
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = @subject
  AND c.catalog_number = @catalog_number;

SELECT c.subject, c.catalog_number, c.title, ch.status
FROM Checklist ch
JOIN Course c ON ch.course_id = c.course_id
WHERE ch.user_id = @user_id AND c.subject = @subject AND c.catalog_number = @catalog_number;

-- R8 Timing (5 runs after initial warm-up update above)
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';
UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = 'completed' WHERE ch.user_id = 1 AND c.subject = 'CS' AND c.catalog_number = '349';

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `R8_timing_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'UPDATE Checklist ch JOIN Course c ON ch.course_id = c.course_id SET ch.status = \'completed\' WHERE ch.user_id = 1%'
ORDER BY EVENT_ID DESC LIMIT 5;


-- ============================================================
-- Feature R9: Add, update, or remove a course on the checklist
-- ============================================================

SET @user_id = 2, @subject = 'CS', @catalog_number = '245';

-- 1. Add course to checklist
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

-- 2. Update status on checklist
EXPLAIN
UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = @user_id
  AND course_id = (SELECT course_id FROM Course WHERE subject = @subject AND catalog_number = @catalog_number);

UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = @user_id
  AND course_id = (SELECT course_id FROM Course WHERE subject = @subject AND catalog_number = @catalog_number);

-- 3. Remove course from checklist
EXPLAIN
DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (SELECT course_id FROM Course WHERE subject = @subject AND catalog_number = @catalog_number);

DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (SELECT course_id FROM Course WHERE subject = @subject AND catalog_number = @catalog_number);

-- R9 Timing (1 warm-up + 5 timed runs for Add / Update / Delete)
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


-- ============================================================
-- Feature R10: Fetch courses a user is eligible to take [Eddy]
-- (Top 10 rows retrieved as per M2 guidelines for large datasets)
-- ============================================================

SET @user_id = 1;

EXPLAIN
SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
WHERE (c.min_term IS NULL OR c.min_term <= u.next_study_term)
  AND NOT EXISTS (SELECT 1 FROM Prereq p
                  WHERE p.course_id = c.course_id
                    AND NOT EXISTS (SELECT 1 FROM Prereq same
                                    JOIN Checklist done
                                      ON done.user_id = u.user_id
                                     AND done.course_id = same.prereq_course_id
                                     AND done.status IN ('completed', 'in_progress')
                                    WHERE same.course_id = p.course_id
                                      AND same.alt_group = p.alt_group))
  AND NOT EXISTS (SELECT 1 FROM Checklist mine
                  WHERE mine.user_id = u.user_id
                    AND mine.course_id = c.course_id
                    AND mine.status IN ('completed', 'in_progress'))
  AND NOT EXISTS (SELECT 1 FROM Antireq a
                  JOIN Checklist taken ON taken.user_id = u.user_id
                                      AND taken.course_id = a.antireq_course_id
                                      AND taken.status IN ('completed', 'in_progress')
                  WHERE a.course_id = c.course_id)
  AND NOT EXISTS (SELECT 1 FROM Antireq a
                  JOIN Checklist taken ON taken.user_id = u.user_id
                                      AND taken.course_id = a.course_id
                                      AND taken.status IN ('completed', 'in_progress')
                  WHERE a.antireq_course_id = c.course_id)
ORDER BY c.subject, c.catalog_number
LIMIT 10;

SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
WHERE (c.min_term IS NULL OR c.min_term <= u.next_study_term)
  AND NOT EXISTS (SELECT 1 FROM Prereq p
                  WHERE p.course_id = c.course_id
                    AND NOT EXISTS (SELECT 1 FROM Prereq same
                                    JOIN Checklist done
                                      ON done.user_id = u.user_id
                                     AND done.course_id = same.prereq_course_id
                                     AND done.status IN ('completed', 'in_progress')
                                    WHERE same.course_id = p.course_id
                                      AND same.alt_group = p.alt_group))
  AND NOT EXISTS (SELECT 1 FROM Checklist mine
                  WHERE mine.user_id = u.user_id
                    AND mine.course_id = c.course_id
                    AND mine.status IN ('completed', 'in_progress'))
  AND NOT EXISTS (SELECT 1 FROM Antireq a
                  JOIN Checklist taken ON taken.user_id = u.user_id
                                      AND taken.course_id = a.antireq_course_id
                                      AND taken.status IN ('completed', 'in_progress')
                  WHERE a.course_id = c.course_id)
  AND NOT EXISTS (SELECT 1 FROM Antireq a
                  JOIN Checklist taken ON taken.user_id = u.user_id
                                      AND taken.course_id = a.course_id
                                      AND taken.status IN ('completed', 'in_progress')
                  WHERE a.antireq_course_id = c.course_id)
ORDER BY c.subject, c.catalog_number
LIMIT 10;
