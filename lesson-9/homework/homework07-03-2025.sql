SELECT * FROM Employees JOIN Departments ON Salary>5000
SELECT * FROM Customers JOIN Orders ON OrderDate 2023
SELECT * FROM Employees E LEFT JOIN Departments D 
ON E.DepartmentID=D.DepartmentID
--9--
SELECT * FROM Employees JOIN Departments ON Salary>5000
SELECT * FROM Customers JOIN Orders ON OrderDate 2023
SELECT * FROM Employees E LEFT JOIN Departments D 
ON E.DepartmentID=D.DepartmentID
--SELECT * FROM Products RIGHT JOIN SUPPLIERS No table suppliers
--SELECT * FROM Orders FULL JOIN payments No table 'payments'
SELECT E1.NAME AS 'EMPLOYEENAME', 
E2.Name AS 'MANAGERNAME' FROM Employees E1,
Employees E2 WHERE E1.ID=E2.ManagerID
SELECT * FROM Products
SELECT * FROM Sales
SELECT P.ProductName, S.SaleAmount FROM Products P CROSS JOIN Sales S
WHERE P.ProductID=S.ProductID AND SaleAmount>100
-- SELECT * FROM STUDENT JOIN COURSES NO TABLE
SELECT * FROM Orders
SELECT * FROM Customers
JOIN Orders ON Quantity>=3
SELECT * FROM Departments
SELECT * FROM Employees 
LEFT JOIN Departments ON DepartmentName ='Human Resources'
SELECT * FROM Departments
SELECT D.DepartmentName, COUNT(EMPLOYEEID) FROM Employees E 
JOIN Departments D 
ON E.DepartmentID=D.DepartmentID  
GROUP BY DepartmentName --HAVING COUNT(EMPLOYEEID)>10
SELECT * FROM Sales
SELECT * FROM Products
SELECT P.ProductName FROM Products P LEFT JOIN Sales S ON SaleAmount=0
SELECT CustomerName,Quantity FROM Customers RIGHT JOIN Orders ON Quantity>=1
SELECT * FROM Departments FULL JOIN  Employees 
on DepartmentName is null
SELECT * FROM EMPLOYEESM
--15-SELECT E1.NAME AS 'EMPLOYEENAME', 
E2.Name AS 'MANAGERNAME' FROM EMPLOYEESM E1,
EMPLOYEESM E2 WHERE E1.id=E2.MANAGERID
GROUP BY MANAGERID
SELECT * FROM Orders
SELECT * FROM Customers
SELECT FORMAT(O.OrderDate,'YYYY-MM'),OrderID FROM Orders O LEFT JOIN Customers C
ON O.CustomerID=C.CustomerID GROUP BY FORMAT(O.OrderDate,'YYYY-MM'),OrderID
SELECT o.orderid, o.orderdate, c.name
FROM orders o
LEFT JOIN customers c ON o.customerid = c.customerid
WHERE YEAR(o.orderdate) = 2022;
SELECT NAME,Salary FROM Employees JOIN Departments ON 
DepartmentName='SALES' AND Salary>5000
SELECT NAME,DepartmentName FROM Employees JOIN Departments ON 
DepartmentName='IT' 
SELECT * FROM Orders
--SELECT * FROM PAYMENTS-- NO TABLE
SELECT Name,TotalAmount FROM Products LEFT JOIN Orders 
ON TotalAmount=0
SELECT * FROM Departments
SELECT * FROM Employees 
SELECT e.employeeid, e.name, e.salary, d.departmentname
FROM employees e
JOIN departments d ON e.departmentid = d.departmentid
WHERE e.salary > (
    SELECT AVG(e1.salary)
    FROM employees e1
    WHERE e1.departmentid = e.departmentid)
SELECT * FROM Orders
SELECT *FROM PAYMENTS 
-- NO TABLE PAYMENTS SELECT o.orderid, o.orderdate, c.name
 --FROM orders o
--LEFT JOIN customers c ON o.customerid = c.customerid
--WHERE YEAR(o.orderdate) = 2022;
SELECT * FROM Products
SELECT *FROM ProductCategories 
SELECT P.NAME,CategoryName FROM Products P FULL JOIN ProductCategories PC
ON P.ProductID=PC.ProductID AND CategoryName IS NULL
SELECT * FROM EmployeesM
SELECT E2.ManagerID, E1.SALARY FROM EmployeesM E1, EmployeesM E2
WHERE E1.Salary>5000 GROUP BY E2.ManagerID
SELECT DISTINCT ( e1.name),e1.ID, e1.salary, e2.id AS colleague_id, e2.name AS colleague_name
FROM EmployeesM e1
JOIN EmployeesM e2 ON e1.managerid = e2.managerid
WHERE e1.salary > 5000 AND e2.salary > 5000 AND e1.id != e2.id;
