-- ============================================================
-- Feature: Find courses a student is eligible to take.
-- A course is eligible when:
--   its min_term is null or no later than the student's next study term,
--   every alt_group has one prerequisite completed or in progress,
--   the course is not already completed or in progress, and
--   the student has not completed or started an anti-requisite.
-- Courses with the same alt_group are alternatives: one of them is enough.
-- A planned course can still be eligible.
--
-- Query template (the app runs this as a prepared statement):
--
--   SELECT c.course_id, c.subject, c.catalog_number, c.title, c.units, c.min_term
--   FROM Course c
--   JOIN `User` u ON u.user_id = ?
--   WHERE (c.min_term IS NULL OR c.min_term <= u.next_study_term)
--     AND NOT EXISTS (SELECT 1 FROM Prereq p
--                     WHERE p.course_id = c.course_id
--                       AND NOT EXISTS (SELECT 1 FROM Prereq same
--                                       JOIN Checklist done
--                                         ON done.user_id = u.user_id
--                                        AND done.course_id = same.prereq_course_id
--                                        AND done.status IN ('completed', 'in_progress')
--                                       WHERE same.course_id = p.course_id
--                                         AND same.alt_group = p.alt_group))
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
-- Assumes the full setup was just loaded, including
-- database/seed-production-user.sql. Tests use User 1 (y84huang).
-- ============================================================

USE CoursePlanner;

-- Test: Which courses is User 1 eligible to take?
-- Same filters as the template, with no subject or catalog number.
-- Expected: every eligible course, including planned CS 349.
SET @user_id = 1;

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
ORDER BY c.subject, c.catalog_number;
