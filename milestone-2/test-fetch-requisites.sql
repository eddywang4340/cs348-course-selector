-- ============================================================
-- Feature R7 (Milestone 2 - Production): Fetch prereqs & antireqs of a course
--
-- Includes BEFORE vs. AFTER query optimization pair for symmetric anti-requisite lookup.
--
-- Optimization Rationale:
-- - Before: Using `c0.course_id IN (a.course_id, a.antireq_course_id)` evaluates as a
--   disjunction (OR), preventing the optimizer from performing indexed ref lookups on
--   Antireq, leading to full table scans (type: ALL) and a hash join.
-- - After: Restructured into a UNION ALL of two directed indexed lookups. Because
--   anti-requisite pairs are stored with course_id < antireq_course_id, the two branches
--   are mutually exclusive. Both branches execute via indexed ref / eq_ref lookups
--   (O(1) cost), eliminating full table scans without requiring any extra secondary indexes.
-- ============================================================

USE CoursePlanner;

-- ------------------------------------------------------------
-- Part 1: Prerequisites Query on Production
-- ------------------------------------------------------------
SET @subject = 'CS', @catalog_number = '246';

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

-- ------------------------------------------------------------
-- Part 2: Anti-requisites Query: BEFORE Optimization
-- ------------------------------------------------------------
SET @subject = 'CS', @catalog_number = '246';

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

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `before_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE 'SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)%'
ORDER BY EVENT_ID DESC LIMIT 5;

-- ------------------------------------------------------------
-- Part 3: Anti-requisites Query: AFTER Optimization (UNION ALL Rewrite)
-- ------------------------------------------------------------
SET @subject = 'CS', @catalog_number = '246';

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

SELECT ROUND(TIMER_WAIT/1e9, 3) AS `after_ms (last 5 runs)`
FROM performance_schema.events_statements_history
WHERE SQL_TEXT LIKE '%UNION ALL%SELECT c.course_id, c.subject, c.catalog_number, c.title FROM Course c0 JOIN Antireq a ON a.antireq_course_id = c0.course_id%'
ORDER BY EVENT_ID DESC LIMIT 5;

