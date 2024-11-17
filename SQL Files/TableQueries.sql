CREATE DATABASE EXAM;
USE EXAM;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "dominik", 78, "C", "London"),
(102, "arnold", 93, "A", "Liverpool"),
(103, "kevin", 85, "B", "Manchester"),
(104, "Muller", 96, "A", "Munich"),
(105, "Mbappe", 12, "F", "Madrid"),
(106, "Lamine", 82, "B", "Barcelona");

SELECT * FROM student;

-- Update -> used for updating existing rows

SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET grade = "P"
WHERE grade = "A";

SELECT * FROM student;

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;