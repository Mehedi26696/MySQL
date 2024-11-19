-- Create a new database named Queries
CREATE DATABASE Queries;

-- Use the Queries database
USE Queries;

-- Create the parent table 'dept' with columns 'id' and 'name'
CREATE TABLE dept(
 id INT PRIMARY KEY, -- Primary key column
 name VARCHAR(50) -- Department name
);

-- Insert sample data into the 'dept' table
INSERT INTO dept
VALUES
(101, "English"),
(102, "Chemistry");

-- Select all records from the 'dept' table to verify insertion
SELECT * FROM dept;

-- Create the child table 'teacher' with columns 'id', 'name', and 'dept_id'
CREATE TABLE teacher(
 id INT PRIMARY KEY, -- Primary key column
 name VARCHAR(50), -- Teacher name
 dept_id INT, -- Foreign key column referencing 'dept' table
 FOREIGN KEY (dept_id) REFERENCES dept(id) -- Define foreign key constraint
 -- Reflect changes in child table when parent table is updated or deleted
 ON UPDATE CASCADE
 ON DELETE CASCADE
);

-- Insert sample data into the 'teacher' table
INSERT INTO teacher
VALUES
(1, "Adam", 101),
(2, "Eve", 102);

-- Select all records from the 'teacher' table to verify insertion
SELECT * FROM teacher;

-- Update the 'id' column in the 'dept' table where 'id' is 102
UPDATE dept 
SET id = 103
WHERE id = 102;

-- Select all records from the 'dept' table to verify the update
SELECT * FROM dept;

-- Select all records from the 'teacher' table to verify the foreign key update
SELECT * FROM teacher;

 