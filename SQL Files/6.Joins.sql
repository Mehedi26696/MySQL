-- Create a new database named Company
CREATE DATABASE Company;

-- Use the Company database
USE Company;

-- Create tableA with columns id and name
CREATE TABLE tableA(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

-- Insert data into tableA
INSERT INTO tableA
VALUES
(101, "RAMOS"),
(102, "PIQUE");

-- Select all data from tableA
SELECT * FROM tableA;

-- Create tableB with columns st_id and salary
CREATE TABLE tableB(
 st_id INT PRIMARY KEY,
 salary INT
);

-- Insert data into tableB
INSERT INTO tableB
VALUES
(102, 23000),
(103, 34000);

-- Select all data from tableB
SELECT * FROM tableB;

-- Inner Join: Select common records from tableA and tableB
SELECT *
FROM tableA
INNER JOIN tableB
ON tableA.id = tableB.st_id;

-- Inner Join with table aliases
SELECT *
FROM tableA as A
INNER JOIN tableB as B
ON A.id = B.st_id;

-- Left Join: Select all records from tableA and matched records from tableB
SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id;

-- Right Join: Select all records from tableB and matched records from tableA
SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id;

-- Full Join: Select all records when there is a match in either tableA or tableB
SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id
UNION
SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id;

-- Left Exclusive Join: Select all records from tableA that do not have a match in tableB
SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id
WHERE tableB.st_id IS NULL;

-- Right Exclusive Join: Select all records from tableB that do not have a match in tableA
SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id
WHERE tableA.id IS NULL;

-- Create Employee table with columns ID, Name, and Manage_ID
CREATE TABLE Employee (
    ID INT,
    Name VARCHAR(50),
    Manage_ID VARCHAR(50)
);

-- Insert data into Employee table
INSERT INTO Employee (ID, Name, Manage_ID) VALUES
(101, 'Adam', '103'),
(102, 'Bob', '104'),
(103, 'Casey', NULL),
(104, 'Donald', '103');

-- Select all data from Employee table
SELECT * FROM Employee;

-- Self Join: Select manager names and their corresponding employee names
SELECT a.name as manager_name , b.name
FROM Employee as a
JOIN Employee as b
WHERE a.id = b.Manage_id;

-- Create Students table with columns rollno, name, and marks
CREATE TABLE Students (
    rollno INT,
    name VARCHAR(50),
    marks INT
);

-- Insert data into Students table
INSERT INTO Students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

-- Select all data from Students table
SELECT * FROM Students;

-- Get the average marks of all students
SELECT AVG(marks)
FROM Students;

-- Select names and marks of students who scored more than 87.6667
SELECT name, marks
FROM Students 
WHERE marks> 87.6667;

-- Select names and marks of students who scored more than the class average
SELECT name, marks
FROM Students 
WHERE marks> 
(SELECT AVG(marks) FROM Students);

-- Select names and roll numbers of students with even roll numbers
SELECT name, rollno 
FROM Students 
WHERE rollno%2 = 0;

-- Select names and roll numbers of students with even roll numbers using a subquery
SELECT name, rollno 
FROM Students
WHERE rollno in (
      SELECT rollno
      FROM Students
      WHERE rollno%2 = 0);

-- Create class table with columns rollno, name, marks, and city
CREATE TABLE class (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert data into class table
INSERT INTO class (rollno, name, marks, city) VALUES
(101, 'annie', 78, 'London'),
(102, 'sara', 93, 'Paris'),
(103, 'jamal', 85, 'Paris'),
(104, 'david', 96, 'Rome'),
(105, 'emanuel', 92, 'Rome'),
(106, 'farah', 82, 'Rome');

-- Select the maximum marks from students in Rome
SELECT max(marks)
FROM (SELECT * FROM class WHERE city = "Rome") AS temp;

-- Create a view named view1 that selects rollno and name from class table
CREATE VIEW view1 AS
SELECT rollno, name FROM class;

-- Select all data from view1
SELECT * FROM view1;

 

 

