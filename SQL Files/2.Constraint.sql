-- Create a new database named School
CREATE DATABASE School;

-- Use the School database
USE School;

-- Create a table named temp with columns id, name, age, and city
-- id is the primary key, which means it must be unique and not null
CREATE TABLE temp(
 id INT,
 name VARCHAR(50),
 age INT,
 city VARCHAR(50),
 PRIMARY KEY(id) -- PRIMARY KEY alternative syntax
 -- PRIMARY KEY(id, name) -- id and name combinations of both act as a primary key
);

-- Create a table named temp1 with a column cust_id
-- cust_id is a foreign key that references the id column in the temp table
CREATE TABLE temp1(
 cust_id int,
 FOREIGN KEY(cust_id) references temp(id)
);

-- Create a table named emp with columns id and salary
-- salary has a default value of 25000
CREATE TABLE emp(
 id INT,
 salary INT DEFAULT 25000
);

-- Insert a row into the emp table with id 101 and the default salary
INSERT INTO emp (id) VALUES(101);

-- Select all rows from the emp table
SELECT * FROM emp;

-- Create a table named city with columns ID, city, and age
-- ID is the primary key
-- Add a constraint to check that age is at least 18 and city is "Dhaka"
CREATE TABLE city(
 ID INT PRIMARY KEY,
 city VARCHAR(50),
 age INT,
 CONSTRAINT age_check CHECK (age>=18 AND city = "Dhaka")
);

-- Insert a row into the city table
INSERT INTO city VALUES (1,"Dhaka",34);

-- The following insert would give an error because age is less than 18
-- INSERT INTO city VALUES (1,"Dhaka",12); 

-- Select all rows from the city table
SELECT * FROM city;

-- Create a table named newTab with a column age
-- Add a constraint to check that age is greater than 18
CREATE TABLE newTab(
 age INT CHECK(age>18)
);

-- Insert a row into the newTab table
INSERT INTO newTab VALUES(34);

-- The following insert would give an error because age is not greater than 18
-- INSERT INTO newTab VALUES(13); 

-- Select all rows from the newTab table
SELECT * FROM newTab;

