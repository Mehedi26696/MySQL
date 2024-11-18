CREATE DATABASE Queries;
USE Queries;

-- Parent table
CREATE TABLE dept(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, "English"),
(102, "Chemistry");

SELECT * FROM dept;

-- child table
CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(id)
 -- IF we want to reflect changes in child for parent updation or deletion
 ON UPDATE CASCADE
 ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(1, "Adam", 101),
(2, "Eve", 102);

SELECT * FROM teacher;


UPDATE dept 
SET id = 103
WHERE id = 102;

SELECT * FROM dept;

-- Update autometically reflect through foreign key
SELECT * FROM teacher;

 