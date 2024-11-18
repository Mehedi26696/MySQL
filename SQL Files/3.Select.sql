CREATE DATABASE University;
USE University;

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

# Select all
SELECT * FROM student;

# Select specific column
SELECT name, marks FROM student;

# Select unique elements of column
SELECT DISTINCT grade FROM student;

# Where Clause

SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE city = "Dhaka";

SELECT * FROM student WHERE marks > 80 AND city = "Munich";

SELECT * FROM student WHERE marks > 80 OR city = "Munich";

SELECT * FROM student WHERE marks+10 > 90;

SELECT * FROM student WHERE marks%5 = 0;

# selects for a given range
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

# matches any value in the list
SELECT * FROM student WHERE city IN ("Munich","Madrid");

# to negate the given condition
SELECT * FROM student WHERE city NOT IN ("Munich","Madrid");

# Limit clause
# Sets an upper limit on number of rows to be returned
SELECT * FROM student LIMIT 3;

SELECT * FROM student WHERE marks > 80 LIMIT 3;

# Order By Clause
# sort in ascending(ASC) or descending(DESC)

SELECT * FROM student ORDER BY marks ASC;

SELECT * FROM student ORDER BY marks DESC;

# Top 3 students

SELECT * FROM student ORDER BY marks DESC LIMIT 3;


# Aggregate Functions

# Get maximum marks
SELECT max(marks) FROM student;

# Get minimum marks
SELECT min(marks) FROM student;

# Get average marks
SELECT avg(marks) FROM student;

# Get sum of marks
SELECT sum(marks) FROM student;

# Get total rows of marks
SELECT count(marks) FROM student;

# Group By Clause

SELECT city, count(name) FROM student GROUP BY city;

# Having Clause 
# Same as Where clause

# Where use in rows but having use in groups

SELECT count(name), city FROM student GROUP BY city HAVING max(marks) > 90;

-- General Order
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condit﻿ion
-- ORDER BY column(s) ASC;

SELECT city 
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) > 90
ORDER BY city ASC;
