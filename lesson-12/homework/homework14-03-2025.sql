--1. What is the result of Ascii('A') in SQL?
SELECT ASCII('BEAUTY') 
--2. Write a SQL query to get the length of the string 'Hello World' using Len().
SELECT LEN('HELLO WORLD')
--3. How do you reverse a string 'OpenAI' using SQL?
SELECT REVERSE ('OPENAI')
--4. What function would you use to add 5 spaces before a string in SQL?
SELECT SPACE(5)+L'1'
--CHECK WITH LEN
SELECT LEN (SPACE(5)+'1')-LEN('1')
--5. How can you remove leading spaces from the string ' SQL Server'?
LTRIM 
--6. Write a query that converts the string 'sql' to uppercase.
SELECT UPPER('sql')
--7. What function would you use to extract the first 3 characters of the string 'Database'?
SELECT LEFT('Database',3)
--8. How can you get the last 4 characters from the string 'Technology'?
SELECT RIGHT('Technology',4)
--9. Use Substring() to get characters from position 3 to position 6 in the string 'Programming'.
SELECT SUBSTRING('Programming',3,3)
--10. Write a query to concatenate the strings 'SQL' and 'Server' using Concat().
SELECT CONCAT ('SQL','Server')
--11. How can you replace all occurrences of 'apple' with 'orange' in the string 'apple pie'?
SELECT REPLACE('apple pie', 'apple','orange')
--12. Write a query to find the position of the first occurrence of the word 'learn' in the string 'Learn SQL with LearnSQL'.
SELECT CHARINDEX('learn', 'Learn SQL with LearnSQL')
--13. What function can you use to check if the string 'Server' contains 'er' using SQL?
SELECT CHARINDEX('ER', 'SERVER')
--14. How can you split the string 'apple,orange,banana' into individual words using String_split()?
SELECT VALUE FROM string_split('apple,orange,banana', ',')
--15. What is the result of the expression Power(2, 3)?
SELECT POWER(2,3)
--16. Write a query that calculates the square root of 16 using SQL.
SELECT SQRT (16)
--17. How do you get the current date and time in SQL?
SELECT CURRENT_TIMESTAMP
--18. What SQL function would you use to get the current UTC date and time?
SELECT GETUTCDATE ()
--19. How can you get the day of the month from the date '2025-02-03'?
SELECT DAY('2025-02-03')
--20. Write a query to add 10 days to the date '2025-02-03' using Dateadd().
SELECT DATEADD(DAY,10,'2025-02-03')
--1. Use Char() to convert the ASCII value 65 to a character.
SELECT CHAR(65)
--2. What is the difference between Ltrim() and Rtrim() in SQL?
LTRIM TAKE OFF LEFT SPACES, RTRIM FROM RIGHT
--3. Write a query to find the position of the substring 'SQL' in the string 'Learn SQL basics'.
SELECT CHARINDEX('SQL','Learn SQL basics')
--4. Use Concat_ws() to join 'SQL' and 'Server' with a comma between them.
SELECT CONCAT_WS(',','SQL','Server')
--5. How would you replace the substring 'test' with 'exam' using Stuff()?
SELECT STUFF('TEST',1,4,'EXAM')
--6. Write a SQL query to get the square of 7 using Square().
SELECT SQUARE (7)
--7. How do you get the first 5 characters from the string 'International'?
SELECT LEFT('INTERNATIONAL',5)
--8. Write a query to get the last 2 characters of the string 'Database'.
SELECT RIGHT('DATABASE', 2)
--9. What is the result of Patindex('%n%', 'Learn SQL')?
SELECT PATINDEX ('%n%', 'LEARN SQL')
--10. How do you calculate the difference in days between '2025-01-01' and '2025-02-03' using Datediff()?
SELECT DATEDIFF(DAY,'2025-01-01', '2025-02-03')
--11. Write a query to return the month from the date '2025-02-03' using Month().
SELECT MONTH('2025-02-03')
--12. Use DatePart() to extract the year from the date '2025-02-03'.
SELECT DATEPART(YEAR,'2025-02-03')
--13. How can you get the current system time without the date part in SQL?
SELECT SYSDATETIME()
--14. What does the function Sysdatetime() return in SQL?
--CURRENT TIME BY SYSTEM
--15. How would you find the next occurrence of 'Wednesday' from today's date using Dateadd()?
SELECT DATENAME(WEEKDAY,DATEADD(DAY, 5, '2025-03-21'))
--16. What is the difference between Getdate() and Getutcdate()?
UTC TIME AND DATE HAS DIFFERENCE BETWEEN TASHKENT CURRENT DATE AND TIME
--17. Use Abs() to get the absolute value of -15 in SQL.
SELECT ABS(-15)
--18. How would you round the number 4.57 to the nearest whole number using Ceiling()?
SELECT CEILING(4.57)
--19. Write a SQL query to get the current time using Current_Timestamp.
SELECT CURRENT_TIMESTAMP
--20. Use DateName() to return the day name for the date '2025-02-03'.
SELECT DATENAME(WEEKDAY,'2025-02-03')
--1. Write a query to reverse the string 'SQL Server' and then remove the spaces.
SELECT CONCAT(REVERSE('SQL'),REVERSE('SERVER'))
--2. Write a query that uses String_agg() to concatenate all the values in the 'City' column of a table 
--into a single string, separated by commas.
SELECT STRING_AGG(CITY, ',') FROM TABLE
--3. Write a SQL query that checks if a string contains both 'SQL' and 'Server' using Charindex().
SELECT CHARINDEX('SQL', 'SQL SERVER')
SELECT charindex('SQL', 'SQL SERVER'), charindex('SERVER','SQL SERVER')
--4. How would you use Power() to calculate the cube of 5?
SELECT POWER(5,3)
--5. Write a query that splits a string 'apple;orange;banana' by the semicolon and returns each word as a separate row.
SELECT VALUE FROM string_split('apple;orange;banana', ';')
--6. Use Trim() to remove both leading and trailing spaces from the string ' SQL '.
SELECT TRIM(' SQL ')
--7. Write a SQL query to calculate the difference in hours between two timestamps using Datediff().
SELECT DATEDIFF(HOUR, '2025-03-17', '2025-03-21')
--8. How would you calculate the number of months between '2023-05-01' and '2025-02-03' using Datepart()?
SELECT DATEPART(MONTH,'2023-05-01')- DATEPART(MONTH,'2025-02-03')
SELECT DATEDIFF(MONTH,'2023-05-01','2025-02-03')
9. Write a query to find the position of the substring 'SQL' from the end of the string 'Learn SQL Server' 
--using Reverse() and Charindex().
SELECT CHARINDEX (REVERSE ('SQL'), REVERSE('LEARN SQL SERVER'))
--10. Use String_split() to split a comma-separated string 'apple,orange,banana' and return each word in a separate row.
SELECT VALUE FROM string_split('apple,orange,banana',',')
--11. How would you find the number of days from '2025-01-01' to the current date using Datediff()?
SELECT DATEDIFF(DAY, '2025-01-01', CURRENT_TIMESTAMP)
--12. Write a SQL query that returns the first 4 characters of the string 'Data Science' using Left().
SELECT LEFT('Data Science',4)
--13. How can you calculate the square root of 225 and round it to the nearest whole number using Sqrt() and Ceiling()?
SELECT CEILING(SQRT(225))
--14. Write a query that concatenates two strings with a pipe ('|') separator using Concat_ws().
SELECT CONCAT_WS('|','NAVRUZ', 'CELEBRATION')
--15. Use Patindex() to find the position of the first occurrence of any digit in the string 'abc123xyz'.
SELECT PATINDEX('%[1-9]%','abc123xyz')
--16. How would you find the second occurrence of the substring 'SQL' in the string 'SQL Server SQL' using Charindex()?
SELECT CHARINDEX('SQL','SQL Server SQL', CHARINDEX('SQL', 'SQL Server SQL')+1)
--17. Write a SQL query to get the year from the current date using DatePart().
SELECT DATEPART(YEAR, GETDATE())
--18. How do you subtract 100 days from the current date using Dateadd()?
SELECT DATEADD(DAY,100, GETDATE())
--19. Use DateName() to extract the day of the week from the date '2025-02-03'.
SELECT DATENAME(WEEKDAY, '2025-02-03')
--20. Write a query to get the square of a number using the Power() function and return it in the result set.
SELECT POWER (8,2)
