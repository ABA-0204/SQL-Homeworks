--DDL examples create,drop,alter
--DML examples insert, update, delete
create table Employees (EmpID int primary key, name varchar(50), salary decimal(10,2))

INSERT INTO Employees
  ( EmpID, name, salary )
VALUES
  (2, 'Jim', 3000.00 ),
  (3, 'Kate', 8000.00 )
  select * from Employees
  update Employees set salary=4500.00 where salary=1000.00
    select * from Employees
	delete from Employees where EmpID=2
	  select * from Employees
	  -- Delete if used with where deletes a data in row, otherwise deletes everything from table
	  delete from Employees --where name='Kate'
	  --Truncate deletes everything from table, leaves only setting of the table
	  truncate table Employees
	  --Drop takes off totally, even settings of the table
	  drop table Employees
	  ALTER TABLE [employees] 
ALTER COLUMN name varchar(100) 
ALTER TABLE [employees] 
add Department varchar (50)

--truncate table for creating the table with the same settings

CREATE TABLE Departments (
    DeptID int ,
    Dept_name varchar(20),
    EmpID int,
    PRIMARY KEY (DeptID),
    FOREIGN KEY (EmpID) REFERENCES employees(EmpID)
);


INSERT INTO Departments( DeptID, Dept_name)
              values (5,'sales' )
SELECT  Employees.EmpID, Employees.salary, 10, 'John'
FROM    Employees

UPDATE Departments SET Employees=Management WHERE salary>5000

truncate table Employees

--Varchar requires to insert the total amount of signs which can be inseted
--nvarchar means any type of signs, any quantity

ALTER TABLE Employees 
ALTER COLUMN salary float

ALTER TABLE Employees 
drop COLUMN Department

create TABLE Table_1 (
    id INT,
    name VARCHAR(50),
    age INT
);
drop table Departments

create table Customers (Id int, name varchar(20), age int check (age>18))
select * from Customers
create table Employees (EmpID int primary key, name varchar(50), salary decimal(10,2))
INSERT INTO Employees
  ( EmpID, name, salary )
VALUES
  (2, 'Jim', 3000.00 ),
  (4, 'Kate', 8000.00 )
  sp_rename 'Employees.salary','salary1', 'column' 
                  
select * from Employees
update Employees set salary2=4500 where EmpID=1 
update Employees set salary2=3500 where EmpID=2
update Employees set salary2=8000 where EmpID=3
update Employees set salary2=8200 where EmpID=4
   delete from Employees where Salary1-Salary2=0
select * from Employees
select * into BKP_Employees
from Employees  
select * from BKP_Employees
MERGE INTO BKP_Employees
USING Customers
