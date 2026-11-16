-- ============================================================
-- C4: Finished feature queries (R6-R10) on the PRODUCTION database.
-- Load everything first with ./scripts/setup-db.sh, then run:
--   mysql -u root -t -vvv < milestone-2/test-production.sql > milestone-2/test-production.out
-- Tests use production user 1 (y84huang).
-- R6, R7 and R10 only read. R8 marks CS 349 completed (re-run setup-db.sh to undo).
-- R9 adds CS 343, updates it, then removes it, so it leaves no change.
-- ============================================================

USE CoursePlanner;

-- Refresh optimizer statistics after loading the data (as in the appendix)
ANALYZE TABLE Course, Prereq, Antireq, `User`, Checklist;

-- R6: Search a course by subject and catalog number (CS 348)
SELECT course_id, subject, catalog_number, title, description, units, min_term
FROM Course
WHERE subject = 'CS'
  AND catalog_number = '348';

-- R7: Fetch the prereqs of a course (CS 246)
SELECT p.prereq_course_id AS course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Prereq p ON p.course_id = c0.course_id
JOIN Course c ON c.course_id = p.prereq_course_id
WHERE c0.subject = 'CS'
  AND c0.catalog_number = '246';

-- R7: Fetch the antireqs of a course (CS 246)
SELECT c.course_id, c.subject, c.catalog_number, c.title
FROM Course c0
JOIN Antireq a ON c0.course_id IN (a.course_id, a.antireq_course_id)
JOIN Course c ON c.course_id IN (a.course_id, a.antireq_course_id)
 AND c.course_id != c0.course_id
WHERE c0.subject = 'CS'
  AND c0.catalog_number = '246';

-- R10: Fetch the courses user 1 is eligible to take
SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = 1
WHERE (c.min_term IS NULL OR c.min_term <= u.next_study_term)
  AND NOT EXISTS (SELECT 1 FROM Prereq p
                  WHERE p.course_id = c.course_id
                    AND NOT EXISTS (SELECT 1 FROM Prereq alt
                                    JOIN Checklist done ON done.user_id = u.user_id
                                                       AND done.course_id = alt.prereq_course_id
                                                       AND done.status IN ('completed', 'in_progress')
                                    WHERE alt.course_id = p.course_id
                                      AND alt.alt_group = p.alt_group))
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
ORDER BY c.subject, c.catalog_number;

-- R8: User 1 marks CS 349 (planned) as completed
UPDATE Checklist ch
NATURAL JOIN Course c
SET ch.status = 'completed'
WHERE ch.user_id = 1
  AND c.subject = 'CS'
  AND c.catalog_number = '349';

-- R9 add: User 1 adds CS 343 as planned
INSERT INTO Checklist (user_id, course_id, status)
SELECT 1, c.course_id, 'planned'
FROM Course c
WHERE c.subject = 'CS'
  AND c.catalog_number = '343';

-- R9 update: User 1 changes CS 343 (course_id 11425) to in_progress
UPDATE Checklist
SET status = 'in_progress'
WHERE user_id = 1
  AND course_id = 11425;

-- R9 remove: User 1 removes CS 343
DELETE FROM Checklist
WHERE user_id = 1
  AND course_id = (SELECT course_id
                   FROM Course
                   WHERE subject = 'CS'
                     AND catalog_number = '343');
