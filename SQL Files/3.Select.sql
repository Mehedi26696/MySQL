-- Create a new database named University
CREATE DATABASE University;

-- Use the University database
USE University;

-- Create a table named student with columns rollno, name, marks, grade, and city
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

-- Select all columns from the student table
SELECT * FROM student;

-- Select specific columns (name and marks) from the student table
SELECT name, marks FROM student;

-- Select unique elements of the grade column
SELECT DISTINCT grade FROM student;

-- Select rows where marks are greater than 80
SELECT * FROM student WHERE marks > 80;

-- Select rows where city is Dhaka
SELECT * FROM student WHERE city = "Dhaka";

-- Select rows where marks are greater than 80 and city is Munich
SELECT * FROM student WHERE marks > 80 AND city = "Munich";

-- Select rows where marks are greater than 80 or city is Munich
SELECT * FROM student WHERE marks > 80 OR city = "Munich";

-- Select rows where marks plus 10 are greater than 90
SELECT * FROM student WHERE marks+10 > 90;

-- Select rows where marks are divisible by 5
SELECT * FROM student WHERE marks%5 = 0;

-- Select rows where marks are between 80 and 90
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

-- Select rows where city is either Munich or Madrid
SELECT * FROM student WHERE city IN ("Munich","Madrid");

-- Select rows where city is neither Munich nor Madrid
SELECT * FROM student WHERE city NOT IN ("Munich","Madrid");

-- Select the first 3 rows from the student table
SELECT * FROM student LIMIT 3;

-- Select the first 3 rows where marks are greater than 80
SELECT * FROM student WHERE marks > 80 LIMIT 3;

-- Select all rows and sort by marks in ascending order
SELECT * FROM student ORDER BY marks ASC;

-- Select all rows and sort by marks in descending order
SELECT * FROM student ORDER BY marks DESC;

-- Select the top 3 students with the highest marks
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- Aggregate Functions

-- Get the maximum marks
SELECT max(marks) FROM student;

-- Get the minimum marks
SELECT min(marks) FROM student;

-- Get the average marks
SELECT avg(marks) FROM student;

-- Get the sum of marks
SELECT sum(marks) FROM student;

-- Get the total number of rows in the marks column
SELECT count(marks) FROM student;

-- Group By Clause

-- Count the number of students in each city
SELECT city, count(name) FROM student GROUP BY city;

-- Having Clause 
-- Same as Where clause but used with groups

-- Count the number of students in each city where the maximum marks are greater than 90
SELECT count(name), city FROM student GROUP BY city HAVING max(marks) > 90;

-- General Order
-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condition
-- ORDER BY column(s) ASC;

-- Select cities where grade is A, group by city, having maximum marks greater than 90, and order by city in ascending order
SELECT city 
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) > 90
ORDER BY city ASC;
