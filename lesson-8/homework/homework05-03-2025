SELECT * FROM Customers
SELECT * FROM Orders
SELECT C.NAME, O.OrderDate FROM Customers  C INNER JOIN Orders O ON C.CUSTOMERID=O.CUSTOMERID
SELECT * FROM Employees
SELECT * FROM EmployeeDepartments
SELECT * FROM Employees INNER JOIN EmployeeDepartments ON NAME=EMPLOYEENAME
SELECT * FROM Products
SELECT * FROM CATEGORIES
SELECT P.ProductName , C.CategoryName  FROM Products  P INNER JOIN 
Categories C ON PRODUCTID=CATEGORYID
SELECT C.NAME, O.OrderDate FROM Customers  C LEFT JOIN Orders O ON C.CUSTOMERID=O.CUSTOMERID
SELECT * FROM Customers
SELECT * FROM Orders
SELECT C.CUSTOMERNAME, O.ORDERDATE FROM CUSTOMERS C LEFT JOIN ORDERS O
ON C.CustomerID=O.CustomerID
SELECT * FROM ORDERS
SELECT * FROM PRODUCTS
--SELECT * FROM ORDERDETAILS

SELECT * FROM Products
SELECT * FROM CATEGORIES
SELECT * FROM Products CROSS JOIN CATEGORIES
SELECT * FROM Customers
SELECT * FROM Orders
SELECT * FROM Customers C JOIN Orders ON C.CustomerID=OrderID
SELECT * FROM Products CROSS JOIN Orders WHERE Price*Quantity>500
SELECT E.NAME, D.DepartmentName FROM Employees E INNER JOIN Departments D 
ON E.DepartmentID=D.DepartmentID
SELECT * FROM Customers C JOIN Orders ON C.CustomerID<>OrderID
--MEDIUM LEVEL
SELECT DISTINCT C.CustomerName, O.Quantity FROM Customers C INNER JOIN Orders O 
  ON  C.CustomerID=O.CustomerID 
SELECT * FROM STUDENTS
SELECT * FROM COURSES
--tables are not available
SELECT * FROM Employees CROSS JOIN Departments WHERE Salary>5000
SELECT E.Name, ER.DepartmentID,ER.EmployeeID,ER.RoleID, ER.RoleName,
ER.Salary FROM  Employees E JOIN EmployeeRoles ER ON E.EmployeeID=ER.EmployeeID
SELECT * FROM Products
SELECT * FROM SUPPLIERS 
-- tables are not available
SELECT * FROM Products
SELECT * FROM sales 
-- 16-sales table doesn't have enough data
SELECT Name,Salary,DepartmentName FROM Employees JOIN Departments ON Salary>4000 AND DepartmentName='HUMAN RESOURCES'
SELECT E.Name,Salary FROM Employees  E JOIN Departments ON Salary>=4000
SELECT * FROM Products
SELECT * FROM SUPPLIERS 
-- 19-tables are not available
SELECT * FROM SALES
SELECT * FROM REGIONS 
-- 20-tables are not available

SELECT * FROM AUTHORS
SELECT * FROM BOOKS 
--21- tables are not available
SELECT * FROM Products JOIN Categories ON CategoryName!= 'ELECTRONICS'
SELECT * FROM Products CROSS JOIN Orders WHERE Quantity>100 
SELECT * FROM Employees JOIN Departments 
ON DATEDIFF(YEAR, HIREDATE, GETDATE())>5
SELECT * FROM Employees E JOIN Departments D
 ON E.DepartmentID=D.DepartmentID
SELECT * FROM Employees E  LEFT JOIN Departments D
 ON E.DepartmentID=D.DepartmentID
SELECT * FROM PRODUCTS
SELECT * FROM SUPPLIERS
--26- NO TABLE
SELECT O.CustomerID FROM Orders O JOIN Customers C ON 
O.Quantity>=10
SELECT * FROM STUDENTS
SELECT * FROM COURSES 
--28- NO TABLE
SELECT * FROM Employees LEFT JOIN Departments ON DepartmentName='MARKETING'
SELECT * FROM Employees LEFT JOIN Departments 
ON Salary<=78000
