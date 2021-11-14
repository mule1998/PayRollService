-------Welcome to PayRollService----------


----------UC1----------------
-------Create DataBase PayRollService------


CREATE DATABASE payroll_service;
USE payroll_service;


---------UC2-----------
----Retrieve PayRoll----


CREATE TABLE employee_payroll(
ID int not null,
name varchar(30) not null,
salary money not null,
startdate date not null
);


-----------UC3---------------
-------Update Salary------


INSERT INTO employee_payroll VALUES
(1,'Shubham',100000.00,'2021-11-22'),
(2,'Prajwal',200000.00,'2020-01-11'),
(3,'Gautam',300000.00,'2019-03-14')


--------UC4-----------
---Retrieve all data----


SELECT * FROM employee_payroll;


--------------UC5-----------------------
---------Retrieve Specific Data-------


SELECT Name, Startdate FROM employee_payroll WHERE Name='Shubham';
  SELECT * FROM employee_payroll WHERE StartDate between CAST('2019-03-14' as date) and GETDATE();


--------------UC6------------------------
----------- Add gender---------------


ALTER TABLE employee_payroll ADD Gender CHAR(1);
UPDATE employee_payroll SET Gender='M' WHERE id=1;
SELECT * FROM employee_payroll;

