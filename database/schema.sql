DROP DATABASE IF EXISTS CoursePlanner;
CREATE DATABASE IF NOT EXISTS CoursePlanner;
USE CoursePlanner;

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    subject VARCHAR(10) NOT NULL,
    catalog_number VARCHAR(10) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    units DECIMAL(3,2) NOT NULL CHECK (units BETWEEN 0.00 AND 3.00),
    min_term CHAR(2) CHECK (min_term IN ('1A','1B','2A','2B','3A','3B','4A','4B')),
    UNIQUE (subject, catalog_number)
);

CREATE TABLE Prereq (
    course_id INT NOT NULL,
    prereq_course_id INT NOT NULL,
    PRIMARY KEY (course_id, prereq_course_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (prereq_course_id) REFERENCES Course(course_id),
    CHECK (course_id != prereq_course_id)
);

CREATE TABLE Coreq (
    course_id INT NOT NULL,
    coreq_course_id INT NOT NULL,
    PRIMARY KEY (course_id, coreq_course_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (coreq_course_id) REFERENCES Course(course_id),
    CHECK (course_id != coreq_course_id)
);

CREATE TABLE Antireq (
    course_id INT NOT NULL,
    antireq_course_id INT NOT NULL,
    PRIMARY KEY (course_id, antireq_course_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (antireq_course_id) REFERENCES Course(course_id),
    CHECK (course_id < antireq_course_id)
);

CREATE TABLE `User` (
    user_id INT PRIMARY KEY,
    username VARCHAR(20) NOT NULL UNIQUE,
    next_study_term CHAR(2) NOT NULL CHECK (next_study_term IN ('1A','1B','2A','2B','3A','3B','4A','4B'))
);

CREATE TABLE Checklist (
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('planned','in_progress','completed')),
    PRIMARY KEY (user_id, course_id),
    FOREIGN KEY (user_id) REFERENCES `User`(user_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE Category (
    category_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    min_units DECIMAL(4,2) NOT NULL CHECK (min_units >= 0.00)
);

CREATE TABLE CourseCategory (
    category_id VARCHAR(50) NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (category_id, course_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE SubjectCategory (
    category_id VARCHAR(50) NOT NULL,
    subject VARCHAR(10) NOT NULL,
    PRIMARY KEY (category_id, subject),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
