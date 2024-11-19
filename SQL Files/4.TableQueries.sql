-- Create a new database named EXAM
CREATE DATABASE EXAM;

-- Use the EXAM database
USE EXAM;

-- Create a table named student with specified columns
CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

-- Insert data into the student table
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "dominik", 78, "C", "London"),
(102, "arnold", 93, "A", "Liverpool"),
(103, "kevin", 85, "B", "Manchester"),
(104, "Muller", 96, "A", "Munich"),
(105, "Mbappe", 12, "F", "Madrid"),
(106, "Lamine", 82, "B", "Barcelona");

-- Select all data from the student table
SELECT * FROM student;

-- Disable safe updates mode to allow updates without a WHERE clause
SET SQL_SAFE_UPDATES = 0;

-- Update the grade to "P" where the grade is "A"
UPDATE student
SET grade = "P"
WHERE grade = "A";

-- Select all data from the student table to see the updates
SELECT * FROM student;

-- Delete rows where marks are less than 33
DELETE FROM student
WHERE marks < 33;

-- Select all data from the student table to see the deletions
SELECT * FROM student;

-- Add a new column named age to the student table
ALTER TABLE student
ADD COLUMN age INT;

-- Select all data from the student table to see the new column
SELECT * FROM student;

-- Drop the age column from the student table
ALTER TABLE student
DROP COLUMN age;

-- Select all data from the student table to see the column removal
SELECT * FROM student;

-- Rename the student table to learners
ALTER TABLE student
RENAME TO learners;

-- Rename the learners table back to student
ALTER TABLE learners
RENAME TO student;

-- Select all data from the student table to see the table rename
SELECT * FROM student;

-- Change the column name from city to town and modify its datatype
ALTER TABLE student
CHANGE COLUMN city town VARCHAR(50);

-- Select all data from the student table to see the column name change
SELECT * FROM student;

-- Modify the datatype of the marks column to FLOAT and ensure it is NOT NULL
ALTER TABLE student
MODIFY marks FLOAT NOT NULL;

-- Select all data from the student table to see the column modification
SELECT * FROM student;

-- Delete all data from the student table
TRUNCATE TABLE student;

-- Insert data into the student table again
INSERT INTO student
(rollno, name, marks, grade, town)
VALUES
(101, "dominik", 78, "C", "London"),
(102, "arnold", 93, "A", "Liverpool"),
(103, "kevin", 85, "B", "Manchester"),
(104, "Muller", 96, "A", "Munich"),
(105, "Mbappe", 12, "F", "Madrid"),
(106, "Lamine", 82, "B", "Barcelona");

-- Select all data from the student table to see the new data
SELECT * FROM student;