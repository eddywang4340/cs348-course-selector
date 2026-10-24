-- ============================================================
-- Feature R7: Fetch the prereqs & antireqs of a course
-- A user looks up a course (e.g. "CS 246") and views its prerequisites
-- and anti-requisites. Anti-requisites are stored once per pair
-- (course_id < antireq_course_id) but are symmetric, so the antireq
-- query must match the course on either side of the pair.
--
-- Query templates (the app runs these as prepared statements):
--
--   -- Prereqs
--   SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
--   FROM Course c0
--   JOIN Prereq p ON p.course_id = c0.course_id
--   JOIN Course c ON c.course_id = p.prereq_course_id
--   WHERE c0.subject = ?
--     AND c0.catalog_number = ?;
--
--   -- Antireqs (symmetric lookup)
--   SELECT c.course_id, c.subject, c.catalog_number, c.title
--   FROM Course c0
--   JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
--   JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
--                 AND c.course_id != c0.course_id
--   WHERE c0.subject = ?
--     AND c0.catalog_number = ?;
--
-- Assumes the seed data was just loaded (database/schema.sql, database/seed-sample.sql).
-- ============================================================

USE CoursePlanner;

-- Test 1: CS 348 has two prereqs and no antireqs
-- Expected prereqs: CS 246, CS 241. Expected antireqs: empty set.
SET @subject = 'CS', @catalog_number = '348';
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
              AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

-- Test 2: CS 246 has two prereqs and one antireq (CS 246E)
-- Expected prereqs: CS 136, CS 245. Expected antireqs: CS 246E.
SET @subject = 'CS', @catalog_number = '246';
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
              AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

-- Test 3: CS 246E is only stored as the second half of the (4, 11) antireq
-- pair, so this checks the symmetric lookup finds CS 246 for it anyway.
-- Expected prereqs: empty set. Expected antireqs: CS 246.
SET @subject = 'CS', @catalog_number = '246E';
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
              AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

-- Test 4: CS 135 is a standalone course with no requisite relationships at all
-- Expected prereqs: empty set. Expected antireqs: empty set.
SET @subject = 'CS', @catalog_number = '135';
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;

SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
              AND c.course_id != c0.course_id
WHERE c0.subject = @subject
  AND c0.catalog_number = @catalog_number;
