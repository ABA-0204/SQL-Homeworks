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
--4. Write a query to join a Temp table (for example, Temp_Orders) and the Orders 
--table to show orders that are present in both tables.
CREATE TABLE #TEMP_ORDERS (ORDER_ID INT, ORDER_DATE DATE)
INSERT INTO #TEMP_ORDERS SELECT ORDERID, OrderDate FROM Orders
SELECT * FROM Orders INNER JOIN #TEMP_ORDERS ON Orders.OrderID=#TEMP_ORDERS.ORDER_ID
--5. Write a query to demonstrate a CROSS APPLY between Employees and a derived table that 
--shows their department's top-performing sales (e.g., top 5 sales).
SELECT * FROM EmployeesS
SELECT * FROM SalesS
SELECT DEPARTMENT FROM EmployeesS E CROSS APPLY ( SELECT  TOP 5* FROM SalesS ORDER BY SaleAmount) 
AS DERIVEDTOP WHERE E.EmployeeID=DERIVEDTOP.EmployeeID GROUP BY Department

--6. Write a query to join Customers and Orders using AND in the ON clause 
--to filter customers who have placed orders in 2023 and have a loyalty status of 'Gold'.
SELECT * FROM Customers
SELECT * FROM Orders
SELECT C.Name, O.OrderDate, C.LoyaltyStatus
FROM Customers C JOIN Orders O ON C.CustomerID= O.CustomerID AND YEAR(O.OrderDate) = 2023 AND C.LoyaltyStatus='GOLD';
--7. Write a query to join a derived table (SELECT CustomerID, COUNT(*) FROM Orders GROUP BY CustomerID) 
--with the Customers table to show the number of orders per customer.
SELECT * FROM Customers C JOIN (SELECT CustomerID, COUNT(Quantity) AS COLUMN1 FROM Orders O GROUP BY CustomerID) AS DTABLE ON 
C.CustomerID= DTABLE.CustomerID
--8. Write a query to join Products and Suppliers using OR in the ON clause to show products 
--supplied by either 'Supplier A' or 'Supplier B'.
SELECT * FROM Products
SELECT * FROM SUPPLIERS-- NO TABLE
SELECT * FROM Products JOIN SUPPLIERS ON SUPPLIER='A' OR SUPPLIER='B'
--9. Write a query to demonstrate the use of OUTER APPLY between Employees 
--and a derived table that returns each employee's most recent order.
SELECT * FROM EmployeesS E OUTER APPLY (SELECT TOP 1 * FROM SalesS S WHERE E.EmployeeID=S.EmployeeID ORDER BY S.SaleDate DESC) AS LASTORDER
--10. Write a query to perform a CROSS APPLY between Departments and a table-valued function 
--that returns a list of employees working in that department.
SELECT * FROM Departments D CROSS APPLY (SELECT E.Name FROM EmployeesM E WHERE E.Department= D.DepartmentName) Czip ;
--11. Write a query that uses the AND logical operator in the ON clause
--to join Orders and Customers, and filter customers who placed an order with a total amount greater than 5000.
SELECT C.Name, SUM(O.TOTALAMOUNT) AS TAMOUNT FROM Orders O JOIN  Customers C ON O.CUSTOMERID=C.CUSTOMERID GROUP BY C.Name 
HAVING SUM(O.TOTALAMOUNT)> 5000
--12. Write a query that uses the OR logical operator in the ON clause to join 
--Products and Sales to filter products that were either sold in 2022 or have a discount greater than 20%.
SELECT * FROM ProductDiscounts
SELECT * FROM Sales
SELECT * FROM ProductDiscounts P JOIN Sales S ON P.ProductID=S.ProductID WHERE YEAR(S.SALEDATE)=2022 OR P.DiscountPercentage>20
--13. Write a query to join a derived table that calculates the total sales 
--(SELECT ProductID, SUM(Amount) FROM Sales GROUP BY ProductID) with the Products table to show total sales for each product.
SELECT * FROM Products P JOIN (SELECT ProductID, SUM(SalesAmount) AS TOTSALAMOUNT FROM Sales S GROUP BY ProductID) AS DERIVED 
ON P.ProductID=DERIVED.ProductID
--14. Write a query to join a Temp table (Temp_Products) and the Products 
--table to show the products that have been discontinued in the Temp table.
SELECT PRODUCTID, STOCKQUANTITY INTO Temp_Products FROM PRODUCTS
SELECT * FROM Temp_Products
SELECT P.ProductID, TP.StockQuantity FROM Products P JOIN Temp_Products TP ON P.ProductID=TP.ProductID WHERE TP.StockQuantity=0
--15. Write a query to demonstrate CROSS APPLY by applying a table-valued function 
--to each row of the Employees table to return the sales performance for each employee.
SELECT * FROM EmployeesM 
