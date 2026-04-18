Q1. Count how many employees fall in each salary band (High / Mid / Low). Show salary_band and count.

SELECT
CASE
	WHEN Salary > 80000 THEN 'High'
	WHEN Salary < 80000 AND Salary > 50000 THEN 'Mid'
	ELSE 'Low'
END AS Salary_Band,
Count(*) AS Total_Employees
FROM Employees 
GROUP BY CASE
	WHEN Salary > 80000 THEN 'High'
	WHEN Salary < 80000 AND Salary > 50000 THEN 'Mid'
	ELSE 'Low'
END;


Q2. For each order, add a bonus_points column: Laptop = 500 pts, Phone = 200 pts, Tablet = 300 pts, anything else = 100 pts.

Q3. Show each employee's name, department, and a tax_bracket based on salary. Then filter to show only employees in the 'High' bracket.

Q4. For each department, show the total salary of Active employees only (use CASE inside SUM to ignore Inactive ones).
Show hint