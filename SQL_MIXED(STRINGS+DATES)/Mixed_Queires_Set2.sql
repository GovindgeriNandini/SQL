--MEDIUM → HARD

--Q16. Display department and count of employees whose email (if available) contains 'company'.
SELECT Department, 
	COUNT(*) AS Employee_Count 
FROM Employees 
WHERE Email LIKE '%company%' 
GROUP BY Department;

--Q17. Display first name and average salary of employees having the same first name.
SELECT LEFT(TRIM(FullName), 
	POSITION(' ' IN TRIM(FullName))-1) AS FirstName, 
		AVG(Salary) AS Average_Salary 
FROM  Employees 
GROUP BY FirstName;

--Q18. Show month (number) of BirthDate and count employees, but only include months where count > 1.
SELECT EXTRACT(MONTH FROM BirthDate) AS Birth_Month, 
	COUNT(*) No_Of_Employees 
FROM Employees
GROUP BY EXTRACT(MONTH FROM BirthDate) HAVING COUNT(*) > 1; 

--Q19. Display department and total number of employees who have worked more than 3 years.
SELECT Department, 
	COUNT(*) AS Total_Employees 
FROM Employees 
WHERE EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM JoinDate) > 3 
GROUP BY Department;

--Q20. Show join year and count of employees whose names start with 'A' or 'a'.
SELECT EXTRACT(YEAR FROM JoinDate) AS Join_Date, 
COUNT(*) AS Total_Employees
FROM Employees 
WHERE FullName LIKE 'A%' OR FullName LIKE 'a%' 
GROUP BY EXTRACT(YEAR FROM JoinDate); 


--HARD 

--Q21. Display department and count of employees whose first name length > 5 AND joined before 2020.
SELECT Department, 
	COUNT(*) AS Total_Employees
FROM Employees 
WHERE LENGTH(SPLIT_PART(FullName, ' ', 1) ) > 5 AND EXTRACT(YEAR FROM JoinDate) < 2020
GROUP BY Department;

--Q22. Show city-wise average salary of employees born after 1995.
SELECT City, 
	AVG(Salary) AS Average_Salary 
FROM Employees 
WHERE EXTRACT(YEAR FROM BirthDate) > 1995  
GROUP BY City;

--Q23. Display first letter of name and count, only for employees earning more than average salary.
SELECT SUBSTRING(TRIM(FullName), 1, 1), 
	COUNT(*) AS Total_Employees
FROM Employees  
WHERE Salary > (SELECT AVG(SALARY) FROM Employees)
GROUP BY SUBSTRING(TRIM(FullName), 1, 1);  

--Q24. Show department-wise count of employees whose JoinDate month is same as their BirthDate month.
SELECT Department, 
	COUNT(*) AS Total_Employees 
FROM Employees 
WHERE EXTRACT(MONTH FROM JoinDate) = EXTRACT(MONTH FROM BirthDate) 
GROUP BY Department;


--Q25. Display year of joining and count of employees, but only include years where more than 2 employees joined.
SELECT EXTRACT(YEAR FROM JoinDate), 
	COUNT(*) AS Total_Employees
FROM Employees
GROUP BY EXTRACT(YEAR FROM JoinDate) HAVING COUNT(*) > 2;
