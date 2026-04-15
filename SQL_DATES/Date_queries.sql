--Q1. Display all employees with their Join Year.
SELECT FullName, YEAR(JoinDate)AS Join_Year FROM Employees

--Q2. Display employee names and their Birth Month number.
SELECT FullName, MONTH(BirthDate) AS Birth_Month FROM Employees;

--Q3. Show the DAY part of each employee's JoinDate.
SELECT FullName, DAY(JoinDate) AS Join_Day FROM Employees

--Q4. Display current date and time.
SELECT CURRENT_TIMESTAMP AS TODAY;

--Q5. Show employee name along with today's date.
SELECT FullName, CURRENT_DATE AS TODAY FROM Employees

--Q6. Display employee names and the number of days they have worked till today.
SELECT FullName, DATEDIFF(DAY,JoinDate, ISNULL(LastWorkingDate, GETDATE())) TOTAL_WORKING_DAYS FROM Employees;

--Q7. Find how many years each employee has worked in the company.
SELECT FullName, 
DATEDIFF(YEAR, JoinDate, ISNULL(LastWorkingDate, GETDATE())) 
AS TOTAL_WORKING_YEARS FROM Employees


--Q8. Display employees who joined after the year 2020.
SELECT FullName FROM Employees WHERE YEAR(JoinDate) > 2020 ;

--Q9. Display employees who were born before 1995.
SELECT FullName, BirthDate FROM Employees WHERE YEAR(BirthDate) < 1995;

--Q10. Show employee name and the month name of their BirthDate.
SELECT FullName, DATENAME(MONTH,BirthDate)  AS Birth_Month  FROM Employees;

--Q11. Show employee name and day name of their JoinDate.
SELECT FullName, DATENAME(WEEKDAY, JoinDate) AS DAY FROM Employees;


--Q12. Display all employees who joined in the month of January.
(i) 
SELECT FullName FROM Employees WHERE DATENAME(MONTH, JoinDate) = 'January';
(ii)
SELECT FullName FROM Employees WHERE MONTH(JoinDate) = 1;


--Q13. Display all employees who joined on the 15th day of any month.
SELECT FullName , JoinDate FROM Employees WHERE DAY(JoinDate) = 15;


--Q14. Add 6 months to each employee's JoinDate and display it.
--(Hint: DATEADD)
SELECT FullName, JoinDate, DATEADD(MONTH, 6, JoinDate) AS Extended_Period FROM Employees;

--Q15. Subtract 1 year from each employee's BirthDate.
SELECT FullName, BirthDate, DATEADD(YEAR, -1, BirthDate) AS MODIFIED_DOB FROM Employees;

--Q16. Display employees whose LastWorkingDate is not NULL.
SELECT FullName FROM Employees WHERE LastWorkingDate IS NOT NULL;


--Q17. Find the number of days between BirthDate and JoinDate for each employee.
SELECT FullName, DATEDIFF(DAY, BirthDate, JoinDate) AS DAYS_BEFORE_JOINING FROM Employees;

--Q18. Display employee names and their age in years.
--This does not calculate exact age, It only counts: how many year boundaries crossed, a case condition to be used 
SELECT FullName, DATEDIFF(YEAR,  BirthDate, GETDATE()) AS Age FROM Employees;

--Q19. Show employees who joined in the same year as 'Arjun Reddy'.
SELECT FullName FROM Employees 
WHERE 
YEAR(JoinDate) = (SELECT YEAR(JoinDate) FROM Employees WHERE FullName = 'Arjun Reddy');

--Q20. Display employees whose BirthDate falls in the current month.
SELECT FullName FROM Employees WHERE MONTH(BirthDate) = MONTH(GETDATE());

--Q21. Display the last day of the month for each employee's JoinDate.
SELECT FullName,JoinDate, EOMONTH(JoinDate) AS Last_Date_Of_Joining_Month FROM Employees;

--Q22. Show employee name and quarter of JoinDate.
SELECT FullName, DATEPART(QUARTER,JoinDate) AS YEAR_QUARTER FROM Employees;

--Q23. Display employees who joined in the first quarter (Q1).
SELECT FullName FROM Employees WHERE DATEPART(QUARTER, JoinDate) = 1;


--Q24. Find employees who have worked more than 5 years.
SELECT FullName, DATEDIFF(YEAR, JoinDate, GETDATE()) AS Years_Worked FROM Employees WHERE DATEDIFF(YEAR, JoinDate, GETDATE()) > 5;

--Q25. Display employee names and number of months they have worked.
SELECT FullName, DATEDIFF(MONTH, JoinDate,GETDATE()) AS Total_Months_Worked FROM Employees;
