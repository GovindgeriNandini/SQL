
--Q26. Display department and count of employees whose name (after TRIM) starts and ends with a vowel.
SELECT Department, 
	COUNT(*) AS Total_Employees
FROM Employees 
WHERE TRIM(FullName) ~ '^[aeiouAeiou].*[aeiouAEIOU]$'
GROUP BY Department;

--Q27. Show join year and total salary, but only for employees whose name contains space (first + last name).
SELECT EXTRACT(YEAR FROM JoinDate) AS Join_Year, 
	SUM(Salary) AS Total_Salary
FROM Employees
WHERE TRIM(FullName) LIKE '% %'
GROUP BY EXTRACT(YEAR FROM JoinDate);


--Q28. Display city and count of employees whose age is between 25 and 35.
SELECT City, 
	COUNT(*) AS No_Of_Employees
FROM Employees
WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE, BirthDate) ) BETWEEN 25 AND 35
GROUP BY City;


--Q29. Show department-wise count of employees who joined in the same month as the current month.
SELECT Department, 
	COUNT(*) AS Total_Employees 
FROM Employees
WHERE EXTRACT(MONTH FROM JoinDate) = EXTRACT(MONTH FROM CURRENT_DATE)
GROUP BY Department;

--Q30. Display first name and count of employees, but only include names that appear more than once AND whose join year is after 2018.
SELECT LEFT(TRIM(FullName), POSITION(' ' IN  TRIM(FullName)) - 1),
	COUNT(*) AS Total_Employees 
FROM Employees
WHERE EXTRACT (YEAR FROM JoinDate) > 2018
AND POSITION(' ' IN TRIM(FullName)) > 0
GROUP BY LEFT(TRIM(FullName), POSITION(' ' IN  TRIM(FullName)) - 1)
HAVING COUNT(*) > 1;
