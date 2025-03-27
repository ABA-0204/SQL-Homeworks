--1️⃣ **Extract a Substring** → Extract the first **4** characters from **'DATABASE'**.  
SELECT SUBSTRING('DATABASE',1,4)
--2️⃣ **Find Position of a Word** → Find position of **'SQL'** in **'I love SQL Server'**.  
SELECT CHARINDEX('SQL', 'I love SQL Server')
--3️⃣ **Replace a Word** → Replace **'World'** with **'SQL'** in **'Hello World'**.  
SELECT REPLACE('HELLO WORLD','WORLD','SQL')
--4️⃣ **Find String Length** → Find length of **'Microsoft SQL Server'**.  
SELECT LEN('Microsoft SQL Server')
--5️⃣ **Extract Last 3 Characters** → Get last **3** characters from **'Database'**.  
SELECT RIGHT('Database',3)
--6️⃣ **Count a Character** → Count occurrences of **'a'** in **'apple', 'banana', 'grape'**.  
SELECT CHARINDEX('a','apple')
SELECT CHARINDEX('a','banana')
SELECT CHARINDEX('a','grape')
--7️⃣ **Remove Part of a String** → Remove first **5** characters from **'abcdefg'**.  
SELECT RIGHT('abcdefg',LEN('abcdefg')-5)
--8️⃣ **Extract a Word** → Extract second word from **'SQL is powerful', 'I love databases'**.  
SELECT SUBSTRING('SQL is powerful', 5,2)
SELECT SUBSTRING('I love databases',3,4)
--9️⃣ **Round a Number** → Round **15.6789** to **2 decimal places**.  
SELECT ROUND(15.6789,2)
--🔟 **Absolute Value** → Find absolute value of **-345.67**.  
SELECT ABS(-345.67)
--1️⃣1️⃣ **Find Middle Characters** → Extract middle **3** characters from **'ABCDEFGHI'**.  
SELECT SUBSTRING('ABCDEFGHI', 4,3)
--1️⃣2️⃣ **Replace Part of String** → Replace first **3** chars of **'Microsoft'** with **'XXX'**.  
SELECT STUFF('Microsoft',1,3,'XXX')
--1️⃣3️⃣ **Find First Space** → Find position of first **space** in **'SQL Server 2025'**.  
SELECT CHARINDEX(' ','SQL Server 2025',1)
--1️⃣4️⃣ **Concatenate Names** → Join **FirstName** & **LastName** with **', '**.  
SELECT CONCAT_WS(',','FirstName', 'LastName')
--1️⃣5️⃣ **Find Nth Word** → Extract **third word** from **'The database is very efficient'**.  
SELECT SUBSTRING('The database is very efficient',14,2)
--1️⃣6️⃣ **Extract Only Numbers** → Get numeric part from **'INV1234', 'ORD5678'**.  
SELECT RIGHT('INV1234',4)
SELECT RIGHT('ORD5678',4)
--1️⃣7️⃣ **Round to Nearest Integer** → Round **99.5** to the nearest integer.  
SELECT ROUND(99,5,0)
--1️⃣8️⃣ **Find Day Difference** → Days between **'2025-01-01'** & **'2025-03-15'**.  
SELECT DATEDIFF(DAY,'2025-01-01','2025-03-15')
--1️⃣9️⃣ **Find Month Name** → Retrieve month name from **'2025-06-10'**.  
SELECT DATENAME(MONTH,'2025-06-10')
--2️⃣0️⃣ **Calculate Week Number** → Week number for **'2025-04-22'**.  
SELECT DATEDIFF(WEEK,'2025-01-01', '2025-04-22')
--2️⃣1️⃣ **Extract After '@'** → Extract domain from **'user1@gmail.com', 'admin@company.org'**.  
SELECT SUBSTRING('user1@gmail.com',CHARINDEX('@','user1@gmail.com',1)+1, LEN('user1@gmail.com')-5)
SELECT SUBSTRING('admin@company.org',CHARINDEX('@','admin@company.org',1)+1, LEN('admin@company.org')-5)
--2️⃣2️⃣ **Find Last Occurrence** → Last **'e'** in **'experience'**.  
SELECT CHARINDEX('E', 'experience')+3
--2️⃣3️⃣ **Generate Random Number** → Random number **between 100-500**.  
SELECT RAND()*(500-100)+100;
--2️⃣4️⃣ **Format with Commas** → Format **9876543** as **"9,876,543"**.  
SELECT FORMAT(9876543, 'N0')
--2️⃣5️⃣ **Extract First Name** → Get first name from **
CREATE TABLE Customers (FullName VARCHAR(100));
INSERT INTO Customers VALUES ('John Doe'), ('Jane Smith')
**.  
SELECT SUBSTRING(fullname, 1, CHARINDEX(' ', fullname) - 1) AS Firstname,     
       SUBSTRING(fullname,
                 CHARINDEX(' ', fullname) + 1,
                 LEN(fullname) - CHARINDEX(' ', fullname)) AS Lastname
FROM Customers
--2️⃣6️⃣ **Replace Spaces with Dashes** → Change **'SQL Server is great'** → **'SQL-Server-is-great'**.  
SELECT REPLACE('SQL Server is great', ' ', '-')
--2️⃣7️⃣ **Pad with Zeros** → Convert **42** to **'00042'** (5-digit).  
SELECT CONCAT('000','42')
--2️⃣8️⃣ **Find Longest Word Length** → Longest word in **'SQL is fast and efficient'**.  
SELECT value,  len(value) FROM STRING_SPLIT('SQL is fast and efficient', ' ') order  by len(value) desc
--2️⃣9️⃣ **Remove First Word** → Remove first word from **'Error: Connection failed'**. Output: **: Connection failed'** 
SELECT RIGHT('Error: Connection failed', LEN('Error: Connection failed')-LEN('Error')-1)
--3️⃣0️⃣ **Find Time Difference** → Minutes between **'08:15:00'** & **'09:45:00'**.  
SELECT DATEDIFF(MINUTE,'08:15:00','09:45:00')
