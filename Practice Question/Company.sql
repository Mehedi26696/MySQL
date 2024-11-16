CREATE DATABASE CSEDU;

USE CSEDU;
CREATE TABLE employees(
 ID INT PRIMARY KEY,
 name VARCHAR(50),
 salary INT NOT NULL
);
INSERT INTO employees
(ID, name, salary)
VALUES
(1,"adam",2500),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM employees;