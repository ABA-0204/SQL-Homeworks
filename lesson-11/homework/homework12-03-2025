SELECT * FROM Customers_11
SELECT * FROM Orders_11
SELECT * FROM OrderDetails
SELECT C.NAME, SUM(TOTAL_AMOUNT) AS TOTAMOUNT FROM Customers_11 C JOIN Orders_11  O ON C.customer_id=O.customer_id GROUP BY C.name
SELECT C.NAME, AVG(TOTAL_AMOUNT) AS AVGAMOUNT FROM Customers_11 C JOIN Orders_11  O ON C.customer_id=O.customer_id GROUP BY C.name
SELECT C.NAME, COUNT(TOTAL_AMOUNT) AS COUNTAMOUNT FROM Customers_11 C JOIN Orders_11  O ON C.customer_id=O.customer_id GROUP BY C.name
SELECT TOP 3 *  FROM Customers_11 C JOIN Orders_11  O ON C.customer_id=O.customer_id 
CREATE TABLE Employees_hw (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT);

CREATE TABLE Departments_hw (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));
#### Sample Data:
INSERT INTO Employees_hw VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', NULL);

INSERT INTO Departments_hw VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');
SELECT * FROM Employees_hw
SELECT * FROM Departments_hw
SELECT E.NAME , D.DEPARTMENTNAME FROM Employees_hw E JOIN Departments_hw D ON E.DEPARTMENTID=D.DEPARTMENTID
DROP TABLE Students
DROP TABLE Classes
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    ClassID INT);

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50));
#### Sample Data:
INSERT INTO Students VALUES
(1, 'John', 201),
(2, 'Emma', NULL),
(3, 'Liam', 202);

INSERT INTO Classes VALUES
(201, 'Math'),
(202, 'Science');
SELECT * FROM Students LEFT JOIN Classes ON Students.ClassID= Classes.ClassID
CREATE TABLE Orders_HW (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE);

CREATE TABLE Customers_HW (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50));
#### Sample Data:
INSERT INTO Orders_HW VALUES
(1, 301, '2024-11-01'),
(2, 302, '2024-11-05');

INSERT INTO Customers_HW VALUES
(301, 'Alice'),
(302, 'Bob'),
(303, 'Charlie');
SELECT * FROM Orders_HW O RIGHT JOIN Customers_HW C ON O.CustomerID=C.CustomerID
CREATE TABLE Products_HW (    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50));

CREATE TABLE Sales_HW (    SaleID INT PRIMARY KEY,    ProductID INT,    Quantity INT);
#### Sample Data:
INSERT INTO Products_HW VALUES
(1, 'Laptop'),
(2, 'Tablet'),
(3, 'Phone');

INSERT INTO Sales_HW VALUES
(100, 1, 10),
(101, 2, 5),
(102, NULL, 8);
SELECT * FROM Products_HW P FULL JOIN Sales_HW S ON P.ProductID=S.ProductID
CREATE TABLE Employees_HW1 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerID INT);
#### Sample Data:
INSERT INTO Employees_HW1 VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'Diana', 2);
SELECT E1.NAME, E2.ManagerID FROM Employees_HW1 E1, Employees_HW1 E2 WHERE E1.EMPLOYEEID<>E2.MANAGERID GROUP BY E1.Name	
CREATE TABLE Colors (
    ColorID INT PRIMARY KEY,
    ColorName VARCHAR(50));
CREATE TABLE Sizes (
    SizeID INT PRIMARY KEY,
    SizeName VARCHAR(50));
#### Sample Data:
INSERT INTO Colors VALUES
(1, 'Red'),
(2, 'Blue');
INSERT INTO Sizes VALUES
(1, 'Small'),
(2, 'Medium');
SELECT * FROM Colors CROSS JOIN Sizes WHERE ColorID=SizeID
CREATE TABLE Movies (    MovieID INT PRIMARY KEY,
    Title VARCHAR(50),
    ReleaseYear INT);
CREATE TABLE Actors (    ActorID INT PRIMARY KEY,
    Name VARCHAR(50),    MovieID INT);
#### Sample Data:
INSERT INTO Movies VALUES
(1, 'Inception', 2010),
(2, 'Interstellar', 2014),
(3, 'Dune', 2021);
INSERT INTO Actors VALUES
(101, 'Leonardo DiCaprio', 1),
(102, 'Matthew McConaughey', 2),
(103, 'Timothée Chalamet', 3);
SELECT * FROM Movies
SELECT * FROM Actors
SELECT Title,ReleaseYear,Name FROM Movies M JOIN Actors A ON M.MovieID=A.MovieID WHERE YEAR(ReleaseYear)=2015 
SELECT * 
FROM Movies M
INNER JOIN Actors A
ON M.mOVIEid = A.mOVIEid 
WHERE YEAR(ReleaseYear) > 2015
