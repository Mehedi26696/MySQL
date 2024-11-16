
/* create a database */
CREATE DATABASE college;  

# Delete a database
# DROP DATABASE college;
/* use a database */
USE college;


/* create a table 
design column-> column_name datatype constraint 
*/
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

/* insert data in database */
INSERT INTO student VALUES(1, "MEHEDI", 20);
INSERT INTO student VALUES(2, "TONY", 26);
INSERT INTO student VALUES(3, "PETER", 23);

/* print the table */
SELECT * FROM student;

# when create a database-> check if a database exists which has same name

CREATE DATABASE IF NOT EXISTS college;

# when delete a database-> check if a database exists of given name

DROP DATABASE IF EXISTS temp;

# show available databases

SHOW DATABASES;

# show all the tables of used database

SHOW TABLES;

# delete a table
# DROP TABLE student;

CREATE TABLE class(
 rollno INT PRIMARY KEY,
 name VARCHAR(50)
);

# Multiple rows insert at a time

INSERT INTO class
(rollno, name)
VALUES
(101, "PALMER"),
(102, "KEVIN"),
(103, "ISAK");

SELECT * FROM class;