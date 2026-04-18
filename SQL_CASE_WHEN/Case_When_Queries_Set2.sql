--Q1. Count how many employees fall in each salary band (High / Mid / Low). Show salary_band and count.

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


--Q2. For each order, add a bonus_points column: Laptop = 500 pts, Phone = 200 pts, Tablet = 300 pts, anything else = 100 pts.
SELECT Product,Amount, 
CASE 
	WHEN Product = 'Laptop' THEN 500
	WHEN Product = 'Phone' THEN 200
	WHEN Product = 'Tablet' THEN 300
	ELSE 100
END AS Bonus_Points
FROM Orders;

--Q3. Show each employee's name, department, and a tax_bracket based on salary. Then filter to show only employees in the 'High' bracket.
SELECT Name, Department, 
CASE 
	WHEN Salary > 80000 THEN 'High'
	WHEN Salary >= 50000 THEN 'Mid'
	ELSE 'Low'
END AS Tax_Bracket
FROM Employees
WHERE Salary > 80000;


--Q4. For each department, show the total salary of Active employees only (use CASE inside SUM to ignore Inactive ones).

SELECT Department,
SUM(CASE
	WHEN Status = 'Active' THEN Salary
	ELSE 0
END) AS Total_Active_Salary
FROM Employees
GROUP BY Department;

--Q5. Join employees and orders. For each salesperson, classify their performance as: 
       -- 'Star' (total orders > 2 AND total amount > 100000), 'Decent' (total amount 50000–100000), 
       --  or 'Needs Work' otherwise. Show name, order count, total amount, and performance.
SELECT e.Name, 
COUNT(o.order_id) AS Order_Count,
SUM(o.amount) AS Total_Amount,
CASE
	WHEN SUM(o.amount) > 100000 AND COUNT(o.order_id) > 2 THEN 'Star'
	WHEN SUM(o.amount) >= 50000  THEN 'Decent'
	ELSE 'Needs Work'
END AS Performace
FROM Employees e JOIN Orders o ON e.emp_id = o.emp_id
GROUP BY e.Name, e.emp_id;



