Select ProductName as Name from Products
Select id, name, age from Customers as Client
Select ProductName from Products union select ProductName from Products_Discontinued
Select * from Products intersect Select* from Products_Discontinued
Select *from Products union all Select * from Orders
Select distinct CustomerName, country from Customers
Select *, case when Price=100 then 'High' when price<=100 then 'Low' end from Products
Select *from Employees order by Department, Country
Select * from Products group by ProductID
Select *, iif (stock>100, 'Yes', 'No') from Products


Select CustomerName as ClientName from Orders inner join 
Customers on CustomerName= Customer.CleintName 
Select ProductName from Products union select ProductName from OutOfStock
Select* from Products except select* from DiscontinuedProducts
Select*, case when orders>5 then 'Eligible' else 'Not eligible' end from Customers
Select *, iif (price>100, 'Expensive', 'Affordable') from Products
SELECT COUNT(Orders)
FROM Orders
GROUP BY CustomerID
Select * from Employees where Age<25 or Salary>6000
Select SUM (salesAmount) from Sales group by Region
SELECT OrderDate as OrderInn FROM Customers LEFT JOIN Orders 
ON Customers.OrderInn = Orders.OrderInn;
Select IIF (department='HR',salary+salary*0.1, salary) from Employees 

Select * from Sales union all select* from Returns order by product
Select *from Products intersect select * from DiscontinuedProducts group by product
Select *, case when TotalSales>10000 then 'Top Tier' 
               when TotalSales between 5000 and 10000 then 'Mid Tier'
			   else 'Low Tier' end from Sales
--24

--25

Select Sum(sales) from Products group by CustomerID, ProductID, Region
Select *, case when purchase>1000 then '20% discount'
               when purchase>500 then '10% discount'
			   else 'No discount' end from Sales
Select* from Products union select*from DiscontinuedProducts 
inner Join DiscontinuedProducts 
on Products.products1=DiscontinuedProducts.Products2 
select iif (product_quantity>0, 'In Stock', '0') 
Select *, iif(stock>0, 'Available','Out of Stock') as 'Stock status'
Select* from Customers except Select * from VIP_Customers order by CustomerID
