CREATE DATABASE Company;
USE Company;

CREATE TABLE tableA(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);
 

INSERT INTO tableA
VALUES
(101, "RAMOS"),
(102, "PIQUE");

SELECT * FROM tableA;

CREATE TABLE tableB(
 st_id INT PRIMARY KEY,
 salary INT
);

 

INSERT INTO tableB
VALUES
(102, 23000),
(103, 34000);

SELECT * FROM tableB;

-- Inner Join (only common part)

SELECT *
FROM tableA
INNER JOIN tableB
ON tableA.id = tableB.st_id;

SELECT *
FROM tableA as A
INNER JOIN tableB as B
ON A.id = B.st_id;

-- LEFT JOIN (returns all records from the left table and the matched records from the right table)
SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id;

-- RIGHT JOIN (returns all records from the right table and the matched records from the left table)

SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id;

-- FULL JOIN (Returns all records when there is a match in either left or right table)
-- LEFT JOIN UNION RIGHT JOIN

SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id
UNION
SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id;

-- LEFT Exclusive join (returns all records from the left table but delete the matched records from the right table)

SELECT *
FROM tableA
LEFT JOIN tableB
ON tableA.id = tableB.st_id
WHERE tableB.st_id IS NULL;

-- RIGHT Exclusive join (returns all records from the right table but delete the matched records from the left table)

SELECT *
FROM tableA
RIGHT JOIN tableB
ON tableA.id = tableB.st_id
WHERE tableA.id IS NULL;

-- SELF JOIN

CREATE TABLE Employee (
    ID INT,
    Name VARCHAR(50),
    Manage_ID VARCHAR(50)
);

INSERT INTO Employee (ID, Name, Manage_ID) VALUES
(101, 'Adam', '103'),
(102, 'Bob', '104'),
(103, 'Casey', NULL),
(104, 'Donald', '103');

SELECT * FROM Employee;

SELECT a.name as manager_name , b.name
FROM Employee as a
JOIN Employee as b
WHERE a.id = b.Manage_id;


-- SUB Query

CREATE TABLE Students (
    rollno INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO Students (rollno, name, marks) VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

SELECT * FROM Students;

-- Get names of all students who scored more than class average.

SELECT AVG(marks)
FROM Students;

SELECT name, marks
FROM Students 
WHERE marks> 87.6667;

SELECT name, marks
FROM Students 
WHERE marks> 
(SELECT AVG(marks) FROM Students);

-- Find the names of all students with even roll numbers.

SELECT name, rollno 
FROM Students 
WHERE rollno%2 = 0;

SELECT name, rollno 
FROM Students
WHERE rollno in (
      SELECT rollno
      FROM Students
      WHERE rollno%2 = 0);
      
-- Find the max marks from the students of Rome
CREATE TABLE class (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

INSERT INTO class (rollno, name, marks, city) VALUES
(101, 'annie', 78, 'London'),
(102, 'sara', 93, 'Paris'),
(103, 'jamal', 85, 'Paris'),
(104, 'david', 96, 'Rome'),
(105, 'emanuel', 92, 'Rome'),
(106, 'farah', 82, 'Rome');

SELECT max(marks)
FROM (SELECT * FROM class WHERE city = "Rome") AS temp;

-- MySQL Views
CREATE VIEW view1 AS
SELECT rollno, name FROM class;

SELECT * FROM view1;

 

 

