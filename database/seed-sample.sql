USE CoursePlanner;

INSERT INTO Course (course_id, subject, catalog_number, title, units, min_term) VALUES
    (1, 'CS', '135', 'Designing Functional Programs', 0.50, NULL),
    (2, 'CS', '136', 'Elementary Algorithm Design and Data Abstraction', 0.50, NULL),
    (3, 'CS', '245', 'Logic and Computation', 0.50, NULL),
    (4, 'CS', '246', 'Object-Oriented Software Development', 0.50, NULL),
    (5, 'CS', '241', 'Foundations of Sequential Programs', 0.50, NULL),
    (6, 'CS', '341', 'Algorithms', 0.50, '3A'),
    (7, 'CS', '348', 'Introduction to Database Management', 0.50, '3A'),
    (8, 'CS', '350', 'Operating Systems', 0.50, '3A'),
    (9, 'MATH', '135', 'Algebra for Honours Mathematics', 0.50, NULL),
    (10, 'COMMST', '223', 'Public Speaking', 0.50, NULL),
    (11, 'CS', '246E', 'Object-Oriented Software Development (Enriched)', 0.50, NULL);

INSERT INTO Prereq (course_id, prereq_course_id) VALUES
    (4, 2), (4, 3),
    (5, 4),
    (6, 5),
    (7, 4), (7, 5),
    (8, 5);

INSERT INTO Coreq (course_id, coreq_course_id) VALUES
    (5, 9);

INSERT INTO Antireq (course_id, antireq_course_id) VALUES
    (4, 11);

INSERT INTO `User` (user_id, username, next_study_term) VALUES
    (1, 'y84huang', '3B'),
    (2, 'j45smith', '2B');

INSERT INTO Checklist (user_id, course_id, status) VALUES
    (1, 4, 'in_progress'),
    (1, 7, 'planned'),
    (1, 8, 'completed'),
    (2, 1, 'completed'),
    (2, 2, 'in_progress');

INSERT INTO Category (category_id, name, min_units) VALUES
    ('COMM_LIST_1', 'Communications List 1', 0.50),
    ('HUMANITIES', 'Humanities Requirement', 0.50),
    ('SOCIAL_SCI', 'Social Sciences Requirement', 0.50),
    ('PURE_SCI', 'Pure Sciences Requirement', 0.50),
    ('PURE_APPLIED_SCI', 'Pure and Applied Sciences Requirement', 0.50);

INSERT INTO CourseCategory (category_id, course_id) VALUES
    ('COMM_LIST_1', 10);

-- COMMST isn't on the official UW breadth list in seed-production.sql, so it's
-- added here. The other subject/category pairs that used to be hand-picked
-- here (ECON, BIOL) are already covered by seed-production.sql's full list,
-- so adding them again here would collide on the primary key.
INSERT INTO SubjectCategory (category_id, subject) VALUES
    ('HUMANITIES', 'COMMST');
