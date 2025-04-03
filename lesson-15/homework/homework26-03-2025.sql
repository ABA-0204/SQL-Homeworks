--1.Find employees whose salary is above the average salary. (Derived Table)
SELECT * FROM Employees CROSS JOIN(SELECT AVG(SALARY)AS AVGSALARY FROM Employees ) DTEMPLOYEES 
 WHERE SALARY>AVGSALARY
 --2.Find employees who have the same salary as another employee. (CTE)
---WITH CTE AS( SELECT * FROM Employees)
---SELECT * FROM CTE CROSS JOIN Employees WHERE CTE.Salary=Employees.Salary
--3.Get the number of employees in each department. (CTE)
WITH CTE AS (SELECT DEPARTMENTID, COUNT(EMPLOYEEID) QUANTITY FROM Employees GROUP BY DepartmentID)
SELECT * FROM CTE
--4.Find employees whose salary is below the average salary. (Derived Table)
SELECT * FROM Employees CROSS JOIN(SELECT  AVG (SALARY) AVGSALARY FROM Employees) DTEMPLOYEES WHERE Salary<AVGSALARY
--5.List products that have been sold at least twice. (CTE)
WITH CTE AS (
SELECT PRODUCTID, COUNT (PRODUCTID) QUANTITY FROM Sales GROUP BY ProductID
)
SELECT * FROM CTE WHERE QUANTITY>=2 
--6.Find employees who made a single sale of more than $2000. (Derived Table)
SELECT EmployeeID, SalesAmount FROM Sales WHERE SalesAmount>2000
--7.Retrieve the most expensive product. (Derived Table)
SELECT TOP 1 * FROM Products JOIN( SELECT PRODUCTID, MAX(PRICE) MAXPRICE FROM Products GROUP BY ProductID) DTPRODUCTS 
ON Products.ProductID=DTPRODUCTS.ProductID
--8.Find the total sales made by each employee. (CTE)
WITH CTE AS( SELECT EMPLOYEEID, SUM(SALESAMOUNT) TOTAL FROM Sales GROUP BY EmployeeID)
SELECT * FROM CTE 
--9.Find employees who have sold a "Laptop." (CTE)
WITH CTE AS( SELECT  PRODUCTID, ProductName FROM Products WHERE PRODUCTNAME='LAPTOP')
SELECT * FROM SALES JOIN CTE ON CTE.PRODUCTID=SALES.ProductID 
--10.Find the highest-paid employee in each department. (Derived Table)
SELECT EmployeeID, DT.DepartmentID, MAXSALARY FROM Employees  RIGHT JOIN (
SELECT DEPARTMENTID, MAX(SALARY)MAXSALARY FROM Employees GROUP BY DepartmentID
)DT
ON Employees.DepartmentID=DT.DepartmentID
--11.Find departments with no employees. (CTE)
SELECT * FROM Departments
SELECT * FROM Employees
WITH CTE AS(
SELECT DEPARTMENTID, COUNT (EMPLOYEEID) QUANTITY FROM Employees GROUP BY DepartmentID)
SELECT * FROM CTE JOIN Employees ON CTE.DEPARTMENTID=Employees.DepartmentID WHERE QUANTITY=0
--12.Find employees who have made the same total sales as another employee. (CTE)
WITH CTE1 AS(
SELECT EmployeeID, SUM(SALESAMOUNT) TOTAL FROM Sales GROUP BY EmployeeID)
SELECT * FROM CTE1 JOIN (SELECT EmployeeID, SUM(SALESAMOUNT) TOTAL1 FROM  SALES ) DT
JOIN  SALES ON CTE1.TOTAL=DT.TOTAL1 
--13.Find the total revenue generated per product category. (CTE)
WITH CTE AS(
SELECT CategoryID, SUM(PRICE) TOTAL  FROM Products GROUP BY CategoryID
) SELECT * FROM CTE
--14.Find the top 3 highest-paid employees per department. (Derived Table)
SELECT DEPARTMENTID, EMPLOYEEID FROM Employees JOIN (
SELECT TOP 3 SALARY FROM Employees) DT
