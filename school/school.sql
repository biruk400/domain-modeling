-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

INSERT INTO students (first_name, last_name, email, phone_number)
VALUES ("Jane", "Doe", "jame@example.com", "555-1212");
INSERT INTO students (first_name, last_name, email, phone_number)
VALUES ("Jenny", "Smith", "jenny@gmail.com", "867-5309");
INSERT INTO students (first_name, last_name, email, phone_number)
VALUES ("John", "Johnson", "john@acme.com", "456-7890");


CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

INSERT INTO teachers (first_name, last_name, bio)
VALUES ("Ben", "Block", "A seasoned pro instrcutor");

INSERT INTO teachers (first_name, last_name, bio)
VALUES ("Brian", "Eng", "Loves tacos.");

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

INSERT INTO courses (name, description)
VALUES ("Intro to Software Dev", "This course...");

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);

INSERT INTO courses (time, course_id, teacher_id)
VALUES ("Tuesday 8:30-11:30", 1, 2);
