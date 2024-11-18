CREATE DATABASE School;
USE School;

# NOT NULL -> columns can not have a null value
# UNIQUE -> all values in column are different
# PRIMARY KEY -> makes a column unique and not null but used only for one
# FOREIGN KEY -> prevent actions that would destroy links between tables


CREATE TABLE temp(
 id INT,
 name VARCHAR(50),
 age INT,
 city VARCHAR(50),
 PRIMARY KEY(id) # PRIMARY KEY alternative syntax
 # PRIMARY KEY(id, name) # id and name combiantions of both act as a primary key
);

CREATE TABLE temp1(
 cust_id int,
 FOREIGN KEY(cust_id) references temp(id)
);
 
# Default 

CREATE TABLE emp(
id INT,
salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES(101);

SELECT * FROM emp;

CREATE TABLE city(
 ID INT PRIMARY KEY,
 city VARCHAR(50),
 age INT,
 CONSTRAINT age_check CHECK (age>=18 AND city = "Dhaka")
);

INSERT INTO city VALUES (1,"Dhaka",34);
# INSERT INTO city VALUES (1,"Dhaka",12); -> give an error

SELECT * FROM city;

CREATE TABLE newTab(
 age INT CHECK(age>18)
);

INSERT INTO newTab VALUES(34);
# INSERT INTO newTab VALUES(13); -> give an error


SELECT * FROM newTab;

