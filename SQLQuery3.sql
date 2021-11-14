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


-------------------------UC7----------------------------------------
----Calculate sum, average, count, Min, Max and number of male and female employees---


SELECT SUM(Salary) AS TotalSalary,Gender FROM employee_payroll GROUP BY Gender;
SELECT AVG(Salary) AS AverageSalary FROM employee_payroll GROUP BY Gender;
SELECT COUNT(Salary) AS TotalSalary,Gender FROM employee_payroll GROUP BY Gender;
SELECT MIN(Salary) AS  MinSalary,Gender FROM employee_payroll GROUP BY Gender;
SELECT MAX(Salary) AS MaxSalary,Gender FROM employee_payroll GROUP BY Gender;



---------------------UC8-------------------------------
---------Adding information of employee ---------


ALTER TABLE employee_payroll ADD PhoneNumber bigint;
ALTER TABLE employee_payroll ADD Department varchar(250) not null default 'ENGG';
ALTER TABLE employee_payroll ADD Address varchar(250) default 'baroda';
SELECT * FROM employee_payroll;


--------------------UC9-------------------------
---RenameColumn name in existing table(Salary renamed as Basic pay)---


EXEC sp_rename 'employee_payroll.Salary', 'BasicPay';
ALTER TABLE employee_payroll ADD TaxablePay float, Deduction float,IncomeTax float,NetPay float;
UPDATE employee_payroll SET Deduction = '4000' WHERE Name = 'Shubham';
UPDATE employee_payroll SET Deduction = '3000' WHERE Name = 'Prajwal';
UPDATE employee_payroll SET Deduction = '2000' WHERE Name = 'GautamS';
UPDATE employee_payroll SET NetPay = (BasicPay-Deduction);
UPDATE employee_payroll SET TaxablePay = '1000';
UPDATE employee_payroll SET IncomeTax = '200';
SELECT * FROM employee_payroll;


