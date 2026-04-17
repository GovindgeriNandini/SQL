--Q1.Label each employee as 'High', 'Mid', or 'Low' earner based on their salary.
--High: salary > 80000  |  Mid: 50000–80000  |  Low: below 50000

SELECT Name, Salary,
CASE 	
	WHEN Salary > 80000 THEN 'High'
	WHEN Salary BETWEEN 50000 AND 80000 THEN 'Mid'
	ELSE 'Low'
END AS Salary_Band
FROM employees;


--Q2. Add a column called exp_level that says 'Junior' (less than 3 years), 'Mid' (3–6 years), or 'Senior' (more than 6 years).
-- I
SELECT Name, Years_Exp,
CASE 
	WHEN Years_Exp > 6 THEN 'Senior'
	WHEN Years_Exp BETWEEN 3 AND 6 THEN 'Mid'
	ELSE 'Junior'
END AS Exp_Level 
FROM Employees;
-- II
SELECT Name, Years_Exp,
CASE 
	WHEN Years_Exp < 3 THEN 'Junior'
	WHEN Years_Exp BETWEEN 3 AND 6 THEN 'Mid'
	ELSE 'Senior' 
END AS Exp_Level
FROM Employees;



--Q3. Show each order with a size_label: 'Big' if amount > 60000, 'Small' otherwise.
SELECT Order_id,Product, Amount,
CASE 
	WHEN Amount > 60000 THEN 'Big'
	ELSE 'Small'
END AS Size_Label
FROM Orders;

--Q4. Display each employee's status as a readable label: 'Working' if Active, 'Not Working' if Inactive.
SELECT Name, Status, 
CASE
	WHEN Status = 'Active' THEN 'Working'
	ELSE 'Not Working'
END AS Work_Status
FROM Employees;


