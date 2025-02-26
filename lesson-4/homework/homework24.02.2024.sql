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
Select * from Employees order by Salary desc offset 10 rows fetch next 10 
ghfhfg
