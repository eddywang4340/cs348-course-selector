-- ============================================================
-- Feature R10: Fetch the courses a user is eligible to take
-- Returns every course the user is eligible to take: for each prerequisite
-- group (alt_group), at least one course is completed or in progress on their checklist, they
-- haven't already completed/started it (planned is fine), they haven't completed/started one of its
-- anti-requisites, and its min_term is at or before the user's next study term.
--
-- Query template (the app runs this as a prepared statement):
--
--   SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
--   FROM Course c
--   JOIN `User` u ON u.user_id = ?
--   WHERE (c.min_term IS NULL OR c.min_term <= u.next_study_term)
--     AND NOT EXISTS (SELECT 1 FROM Prereq p
--                     WHERE p.course_id = c.course_id
--                       AND NOT EXISTS (SELECT 1 FROM Prereq alt
--                                       JOIN Checklist done ON done.user_id = u.user_id
--                                                          AND done.course_id = alt.prereq_course_id
--                                                          AND done.status IN ('completed', 'in_progress')
--                                       WHERE alt.course_id = p.course_id
--                                         AND alt.alt_group = p.alt_group))
--     AND NOT EXISTS (SELECT 1 FROM Checklist mine
--                     WHERE mine.user_id = u.user_id
--                       AND mine.course_id = c.course_id
--                       AND mine.status IN ('completed', 'in_progress'))
--     AND NOT EXISTS (SELECT 1 FROM Antireq a
--                     JOIN Checklist taken ON taken.user_id = u.user_id
--                                         AND taken.course_id = a.antireq_course_id
--                                         AND taken.status IN ('completed', 'in_progress')
--                     WHERE a.course_id = c.course_id)
--     AND NOT EXISTS (SELECT 1 FROM Antireq a
--                     JOIN Checklist taken ON taken.user_id = u.user_id
--                                         AND taken.course_id = a.course_id
--                                         AND taken.status IN ('completed', 'in_progress')
--                     WHERE a.antireq_course_id = c.course_id)
--   ORDER BY c.subject, c.catalog_number;
--
-- Run on the sample data only: load database/schema.sql then database/seed-sample.sql
-- (setup-db.sh also loads the production seeds, which would add thousands of rows).
-- All changes below run inside one transaction and are rolled back at the end,
-- so the sample database is left exactly as it was.
-- ============================================================

USE CoursePlanner;

SET @user_id = 2;
START TRANSACTION;

-- Starting state: user 2 (e258wang), next study term 2B
-- Expected: CS 135 completed, CS 136 in_progress
SELECT c.subject, c.catalog_number, ch.status
FROM Checklist ch
NATURAL JOIN Course c
WHERE ch.user_id = @user_id
ORDER BY c.subject, c.catalog_number;

-- Test 1: Baseline
-- User 2 (e258wang) has completed CS 135 and is taking CS 136.
-- Expected: COMMST 223, CS 245, CS 246E, MATH 135
SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
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

-- Test 2: A prereq that is in progress counts
-- User 2 (e258wang) starts taking CS 245.
-- Expected: COMMST 223, CS 246, CS 246E, MATH 135
-- R9 add: CS 245 as in_progress
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'in_progress'
FROM Course c
WHERE c.subject = 'CS'
  AND c.catalog_number = '245';

SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
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

-- Test 3: A prereq that is only planned doesn't count (a planned course is still eligible)
-- User 2 (e258wang) has only planned CS 245.
-- Expected: COMMST 223, CS 245, CS 246E, MATH 135 (CS 246 drops out; CS 245 is back since it is only planned)
-- R9 update: CS 245 (course_id 3) to planned
UPDATE Checklist
SET status = 'planned'
WHERE user_id = @user_id
  AND course_id = 3;

SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
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

-- Test 4: Anti-requisite on the course_id side of the pair
-- User 2 (e258wang) has completed CS 246E, an anti-requisite of CS 246.
-- Expected: COMMST 223, MATH 135
-- R8: mark CS 245 completed
UPDATE Checklist ch
NATURAL JOIN Course c
SET ch.status = 'completed'
WHERE ch.user_id = @user_id
  AND c.subject = 'CS'
  AND c.catalog_number = '245';

-- R9 add: CS 246E as completed
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'completed'
FROM Course c
WHERE c.subject = 'CS'
  AND c.catalog_number = '246E';

SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
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

-- Test 5: Anti-requisite on the other side of the pair + min_term gate
-- User 2 (e258wang) completes CS 246 and CS 241 while going into 2B.
-- Expected: COMMST 223, MATH 135
-- R9 remove: CS 246E
DELETE FROM Checklist
WHERE user_id = @user_id
  AND course_id = (SELECT course_id
                   FROM Course
                   WHERE subject = 'CS'
                     AND catalog_number = '246E');

-- R9 add: CS 246 and CS 241 as completed
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'completed'
FROM Course c
WHERE c.subject = 'CS'
  AND c.catalog_number = '246';
INSERT INTO Checklist (user_id, course_id, status)
SELECT @user_id, c.course_id, 'completed'
FROM Course c
WHERE c.subject = 'CS'
  AND c.catalog_number = '241';

SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
FROM Course c
JOIN `User` u ON u.user_id = @user_id
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


ROLLBACK;
