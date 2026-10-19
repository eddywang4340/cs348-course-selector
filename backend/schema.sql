-- Milestone 0: toy table used only to test the database connection.
-- This is NOT the final project schema.
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(255) NOT NULL,
    course_name VARCHAR(255) NOT NULL
);
