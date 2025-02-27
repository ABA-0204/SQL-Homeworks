Select top 5* from Employees
Select distinct ProductName from Products
Select * from Products where Price>100
Select * from Customer where Customername like 'A%'
Select * from Products order by price asc
Select * from Employees where Salary>=5000 and Department='HR'
Select isnull(email,'noemail@example.com') from emails 
Select * from Products where Price between 50 and 100
Select distinct (Category, ProductName) from Products
Select * from Products order by ProductName desc

Select top 10 * from Products order by Price desc
Select coalesce (FirstName,LAstName) from Employees
Select distinct (Category,Price) from Products 
Select * from Employees where (Age between 30 and 40) or Department='Marketing'
Select * from Employees order by Salary desc offset 10 rows fetch next 10 rows only
Select * from Products where price<=1000 and Stock>50 order by stock asc
Select * from Products where ProductName like '%e%'
Select * from Employees where department in ('HR', 'IT', 'Finance')
Select * from Employees where salary> any (select avg salary from Employees)
Select * from Customers order by city asc and PostalCode desc

Select top10 * from Products order by SalesAmount desc
Select coalesce (FirstName, LastName, 'FullName') from Employees
Select distinct (Category, ProductName, Price) when price > 50 from Products
Select top 10 percent *  from Products order by avg(price)
Select * from Employees where age <30 and Department='HR' or Department='IT'
Select * from Customers where email like'%@gmail.com'
Select * from Employees where salary> all (select salary from Employees where department='Sales')
Select * from Employees order by salary desc offset 0 rows fetch next 10 rows only
Select orders from Orders where placed_date BETWEEN (2024-01-27) and (CURRENT_DATE)
Select * from Employee where salary> any (select avg salary from Employee group by department)
