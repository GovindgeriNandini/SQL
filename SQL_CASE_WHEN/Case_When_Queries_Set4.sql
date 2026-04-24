-- Medium
-- Q11. For each patient, calculate their total bill amount after discount. 
--          Then classify the final amount: below 2000 as "Low Bill", 2000–5000 as "Medium Bill", above 5000 as "High Bill".
--          Show patient name and bill category. (Join billing with patients)

SELECT p.full_name,
ROUND((b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0), 2) AS Total_Fee_After_Discount,
CASE 
	WHEN (b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0)  < 2000 THEN 'Low'
	WHEN (b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0) BETWEEN 2000 AND 5000 THEN 'Medium'
	ELSE 'High'
END AS Bill_Category
FROM Patients p LEFT JOIN Billing b ON p.patient_id = b.patient_id;



--Q12. List each doctor with their department name and classify department budget: below 700000 as "Low Budget", 
-- 		700000–1000000 as "Medium Budget", above 1000000 as "High Budget". Show doctor name, dept name, and budget category.





SELECT doc.full_name, dep.dept_name, dep.budget,
CASE
	WHEN dep.budget < 700000 THEN 'Low'
	WHEN dep.budget BETWEEN 700000 AND 1000000 THEN 'Medium'
	ELSE 'High'
END AS Budget_Category
FROM Doctors doc LEFT JOIN Departments dep  ON doc.dept_id = dep.dept_id;








