	--1Write a query to perform an INNER JOIN between Orders and Customers using AND in the ON clause to filter orders placed after 2022
SELECT * FROM Orders
SELECT * FROM Customers
SELECT * FROM Orders O JOIN Customers C ON O.CustomerID=C.CustomerID AND O.OrderDate>'2022-12-31';
--2. Write a query to join Employees and Departments using OR in the ON clause to show employees in either the 'Sales' or 'Marketing' department.
SELECT * FROM Employees
SELECT * FROM Departments
SELECT * FROM Employees E JOIN Departments D ON D.DepartmentName='SALES' OR D.DepartmentName='MARKETING'
--3. Write a query to join a derived table (for example, SELECT * FROM Products WHERE Price > 100) with the 
Orders table to display products and their corresponding orders.
SELECT * FROM ORDERS O JOIN (SELECT* FROM Products WHERE Price>100) AS PR100 ON 
O.ProductID=PR100.ProductID
--4. Write a query to join a Temp table (for example, Temp_Orders) and the Orders table to show orders that are present in both tables.
SELECT * FROM ORDERS JOIN   ) ON 
