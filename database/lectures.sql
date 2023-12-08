-- list of Databases   
show databases;
-- delete databases
-- drop database world;
-- craeting a datbase 
create database p4n;
use p4n;
-- creating a table
--  table name = employee 
-- column = id,name,city,salary
-- 
-- create table employee(
-- id int,
-- name varchar(25),
-- city varchar(25),
-- salary bigint
-- );
-- To Show Tables
select * from employee;
-- To Insert the Records Into table
insert into employee(id,name,city,salary)
values(1,"Joy","Mumbai",4581311454);

-- DATE   : - 06/12/2023 

-- SQL DROP table
-- DROP TABLE EMPOYEE
-- TRUNCATE TABELE ITS SIMPLY MEANS THAT THIS QUERRY WILL CLAER YOUR TABLE DATA = EMPTY
truncate table employee;

-- SQL PRIMARY KEYS 
create table employee1(
id int primary key,
name varchar(25),
city varchar(25),
salary bigint
);
select * from employee1;

insert into employee1(id,name,city,salary)
values(1,"sonu","pune",340000);
insert into employee1(id,name,city,salary)
values(2,"sonu","pune",340000);


-- AUTO INCREMENT 
CREATE TABLE employee2 (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(25),
    city VARCHAR(25),
    salary BIGINT
);
select * from employee2; 
insert into employee2(name,city,salary)
values("sonu","pune",340000);
insert into employee2(name,city,salary)
values("sonu","pune",540000);

use p4n;

CREATE TABLE p4n_emp (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(255),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    DepartmentID INT,
    Position VARCHAR(255),
    Salary DECIMAL(10, 2)
);

INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(1, 'John', 'Doe', '1990-05-15', 'Male', 'johndoe@example.com', '555-555-5555', '123 Main St, City, State', 101, 'Manager', 75000.00);
-- Inserting the first record
INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(1, 'John', 'Doe', '1990-05-15', 'Male', 'johndoe@example.com', '555-555-5555', '123 Main St, City, State', 101, 'Manager', 75000.00);

-- Inserting the second record
INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(2, 'Jane', 'Smith', '1985-08-20', 'Female', 'janesmith@example.com', '555-555-5556', '456 Oak St, City, State', 102, 'Sales Representative', 60000.00);

-- Inserting the third record
INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(3, 'Michael', 'Johnson', '1992-03-10', 'Male', 'michael@example.com', '555-555-5557', '789 Elm St, City, State', 103, 'Software Engineer', 80000.00);

-- Inserting the fourth record
INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(4, 'Emily', 'Wilson', '1988-11-25', 'Female', 'emily@example.com', '555-555-5558', '101 Pine St, City, State', 102, 'Sales Manager', 90000.00);

-- Inserting the fifth record
INSERT INTO p4n_emp (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Phone, Address, DepartmentID, Position, Salary)
VALUES
(5, 'David', 'Brown', '1995-07-05', 'Male', 'david@example.com', '555-555-5559', '222 Cedar St, City, State', 104, 'HR Specialist', 65000.00);

select * from p4n_emp;

-- delete 

delete from p4n_emp
where employeeid = 4;
SET SQL_SAFE_UPDATES = 0;
-- Update the position and salary for EmployeeID 2
UPDATE p4n_emp
SET Position = 'Senior', Salary = 90.00
WHERE EmployeeID = 2;

use sakila;

select * from payment;

-- ORDER BY ASC
select * from payment
order by rental_id asc;

select * from actor 
order by first_name asc;
-- ORDER BY DESC
select * from payment
order by rental_id desc;
select * from actor 
order by first_name desc;




