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
