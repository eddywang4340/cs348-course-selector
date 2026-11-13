-- y84huang's filled 2023-2024 BCS checklist.
-- Pink + checkmark -> completed. Purple + checkmark -> in_progress.
-- Purple, no checkmark -> planned.
-- Courses tagged (4A) on the checklist are the ones in progress, and the
-- unchecked purple courses are tagged (4B), so the next study term is 4B.
-- seed-sample.sql may already have inserted this user with a toy checklist.

USE CoursePlanner;

INSERT INTO `User` (user_id, username, next_study_term) VALUES
    (1, 'y84huang', '4B')
ON DUPLICATE KEY UPDATE next_study_term = VALUES(next_study_term);

DELETE FROM Checklist WHERE user_id = 1;

-- Completed (credit received). CS 136, CS 241, CS 245, CS 246, CS 341,
-- CS 348, CS 350, MATH 135, and COMMST 223 are the sample-seed rows;
-- they are not in the production course list.
INSERT INTO Checklist (user_id, course_id, status)
SELECT 1, c.course_id, 'completed'
FROM Course c
WHERE (c.subject, c.catalog_number) IN (
    ('CS', '145'),
    ('CS', '136'),
    ('CS', '136L'),
    ('CS', '240'),
    ('CS', '241'),
    ('CS', '245'),
    ('CS', '246'),
    ('CS', '251'),
    ('CS', '341'),
    ('CS', '350'),
    ('CS', '348'),
    ('CS', '370'),
    ('MATH', '135'),
    ('MATH', '136'),
    ('MATH', '137'),
    ('MATH', '138'),
    ('MATH', '239'),
    ('STAT', '230'),
    ('STAT', '231'),
    ('ECON', '101'),
    ('PSYCH', '101'),
    ('CHEM', '120'),
    ('CHEM', '123'),
    ('PSYCH', '207'),
    ('PSYCH', '312'),
    ('COMMST', '223'),
    ('MUSIC', '246'),
    ('ENGL', '109'),
    ('MATH', '235'),
    ('ACTSC', '231'),
    ('PMATH', '340'),
    ('HLTH', '101'),
    ('GEOG', '225'),
    ('MISC', '1XX'),
    ('PD', '1'),
    ('PD', '7'),
    ('PD', '9'),
    ('PD', '10'),
    ('PD', '11')
);

-- Currently taking. HLTH 105 is stored as HEALTH 105.
INSERT INTO Checklist (user_id, course_id, status)
SELECT 1, c.course_id, 'in_progress'
FROM Course c
WHERE (c.subject, c.catalog_number) IN (
    ('ENGL', '101B'),
    ('HEALTH', '105'),
    ('REC', '100')
);

-- Planned.
INSERT INTO Checklist (user_id, course_id, status)
SELECT 1, c.course_id, 'planned'
FROM Course c
WHERE (c.subject, c.catalog_number) IN (
    ('CS', '349'),
    ('CS', '454'),
    ('CS', '456'),
    ('CS', '459')
);
