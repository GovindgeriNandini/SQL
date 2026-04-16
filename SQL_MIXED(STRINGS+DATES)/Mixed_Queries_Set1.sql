--MIXED SQL QUESTIONS (STRING + DATE + GROUP BY)
--EASY
--Q1. Display each department and the total number of employees in it.
SELECT Department, COUNT(*) AS Employees_In_Each_Department FROM Employees GROUP BY Department;

--Q2. Display each city and count of employees working there.
SELECT City, COUNT(*) No_Of_Employees FROM Employees GROUP BY City;

--Q3. Show department-wise average salary.
SELECT Department, ROUND(AVG(Salary),2) AS AVERAGE_SALARY FROM Employees GROUP BY Department;

--Q4. Display department and number of employees who joined after 2020.
SELECT Department, COUNT(*) AS Employees_Joined_After_2020 
FROM Employees WHERE EXTRACT(YEAR FROM DATE (JoinDate)) > 2020 GROUP BY Department ;


--Q5. Show city-wise total salary paid.
SELECT City, SUM(SALARY) AS CITY_WISE_SALARY FROM Employees GROUP BY City;

--Q6. Display first name (extract from FullName) and count how many employees share the same first name.
SELECT LEFT(FullName, POSITION(' ' IN FullName) - 1 ) FirstName , 
COUNT(*) FROM Employees 
GROUP BY  LEFT(FullName, POSITION(' ' IN FullName) - 1 );

--Q7. Display birth year and number of employees born in each year.
SELECT EXTRACT(YEAR FROM DATE(BirthDate)) AS Birth_Year, COUNT(*) AS No_Of_EMP_Born FROM Employees GROUP BY EXTRACT(YEAR FROM DATE(BirthDate));

--Q8. Display join year and count of employees who joined each year.
SELECT  EXTRACT(YEAR FROM DATE(JoinDate)) AS Join_Year, COUNT(*) AS Total_Employees FROM Employees GROUP BY EXTRACT(YEAR FROM DATE(JoinDate));

--MEDIUM

--Q9. Display department and count of employees whose names are longer than 12 characters.
SELECT Department, COUNT(*) FROM Employees WHERE LENGTH(FullName) > 12 GROUP BY Department;

--Q10. Display month name of JoinDate and number of employees joined in each month.
SELECT TO_CHAR(JoinDate, 'MONTH') AS Month_Name, COUNT(*) AS Total_Employees FROM Employees GROUP BY TO_CHAR(JoinDate, 'MONTH');

--Q11. Show department-wise maximum salary.
SELECT Department, Max(Salary) FROM Employees GROUP BY Department;

--Q12. Display first letter of FullName and count how many employees fall under each letter.
SELECT SUBSTRING(FullName, 1, 1) AS First_Letter, COUNT(*) AS Total_Employees FROM Employees  GROUP BY SUBSTRING(FullName, 1, 1);

--Q13. Show department-wise count of employees whose salary is greater than 70,000.
SELECT Department, COUNT(*) AS Total_Employees FROM Employees WHERE Salary > 70000 GROUP BY Department;

--Q14. Display year of joining and average salary of employees joined that year.
SELECT EXTRACT(YEAR FROM JoinDate) AS Joining_Year, ROUND(AVG(Salary),2) AS Average_Salary FROM Employees GROUP BY Joining_Year;

--Q15. Show city-wise count of employees who joined in the last 5 years.
SELECT City, COUNT(*) FROM EMPLOYEES WHERE EXTRACT(YEAR FROM JoinDate) >= EXTRACT(YEAR FROM CURRENT_DATE) - 5 GROUP BY City;
