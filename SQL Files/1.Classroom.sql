/* create a database */
CREATE DATABASE college;  

# Delete a database (commented out)
# DROP DATABASE college;

/* use the created database */
USE college;

/* create a table named 'student' with columns id, name, and age */
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

/* insert data into the 'student' table */
INSERT INTO student VALUES(1, "MEHEDI", 20);
INSERT INTO student VALUES(2, "TONY", 26);
INSERT INTO student VALUES(3, "PETER", 23);

/* retrieve and display all data from the 'student' table */
SELECT * FROM student;

/* create a database only if it does not already exist */
CREATE DATABASE IF NOT EXISTS college;

/* delete a database only if it exists */
DROP DATABASE IF EXISTS temp;

/* show all available databases */
SHOW DATABASES;

/* show all tables in the currently used database */
SHOW TABLES;

/* delete the 'student' table (commented out) */
# DROP TABLE student;

/* create a table named 'class' with columns rollno and name */
CREATE TABLE class(
 rollno INT PRIMARY KEY,
 name VARCHAR(50)
);

/* insert multiple rows into the 'class' table at once */
INSERT INTO class
(rollno, name)
VALUES
(101, "PALMER"),
(102, "KEVIN"),
(103, "ISAK");

/* retrieve and display all data from the 'class' table */
SELECT * FROM class;
