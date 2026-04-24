-- Medium
-- Q11. For each patient, calculate their total bill amount after discount. 
--      Then classify the final amount: below 2000 as "Low Bill", 2000–5000 as "Medium Bill", above 5000 as "High Bill".
--      Show patient name and bill category. (Join billing with patients)

SELECT p.full_name,
ROUND((b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0), 2) AS Total_Fee_After_Discount,
CASE 
	WHEN (b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0)  < 2000 THEN 'Low'
	WHEN (b.consultation_fee + b. medicine_cost + b.test_charges) * ( 1 - b.discount/100.0) BETWEEN 2000 AND 5000 THEN 'Medium'
	ELSE 'High'
END AS Bill_Category
FROM Patients p LEFT JOIN Billing b ON p.patient_id = b.patient_id;



--Q12. List each doctor with their department name and classify department budget: below 700000 as "Low Budget", 
-- 	   700000–1000000 as "Medium Budget", above 1000000 as "High Budget". Show doctor name, dept name, and budget category.

SELECT doc.full_name, dep.dept_name, dep.budget,
CASE
	WHEN dep.budget < 700000 THEN 'Low'
	WHEN dep.budget BETWEEN 700000 AND 1000000 THEN 'Medium'
	ELSE 'High'
END AS Budget_Category
FROM Doctors doc LEFT JOIN Departments dep  ON doc.dept_id = dep.dept_id;


-- Q13. For each admission, calculate the number of days the patient stayed. 
--      Classify stays: 1–3 days as "Short Stay", 4–7 days as "Week Stay", above 7 days as "Long Stay". 
--      Show patient_id, days_stayed, and stay_category.

SELECT patient_id, (discharge_date - admit_date) AS Days_Stayed,
CASE 
	WHEN (discharge_date - admit_date) BETWEEN 1 AND 3 THEN 'Short Stay'
	WHEN (discharge_date - admit_date) BETWEEN 4 AND 7 THEN 'Week Stay'
	ELSE 'Long Stay'
END AS Stay_Category
FROM ward_admissions;

--Q14. Show each appointment with the doctor's name and a charge estimate: 
-- 	   Emergency at 3× the doctor's hourly_rate, Routine at 1× hourly_rate, 
-- 	   Follow-up at 0.5× hourly_rate. Show appt_id, doctor name, appt_type, and estimated_charge.

SELECT a.appt_id, d.full_name, a.appt_type, 
CASE
	WHEN a.appt_type = 'Routine' THEN d.hourly_rate * 1
	WHEN a.appt_type = 'Emergency' THEN d.hourly_rate * 3
	WHEN a.appt_type = 'Follow-up' THEN d.hourly_rate * 0.5
END AS Estimated_Charge
FROM Appointments a LEFT JOIN Doctors d ON a.doctor_id = d.doctor_id;



-- Q15. Classify each patient's severity level in ward admissions: 1–2 as "Mild", 3 as "Moderate", 4–5 as "Critical".
-- 		Count the number of admissions per severity label.

SELECT severity, COUNT(*) AS Admission_Count,
CASE
	WHEN severity BETWEEN 1 AND 2 THEN 'Mild'
	WHEN severity = 3 THEN 'Moderate'
	ELSE 'Critical'
END AS Severity_Label
FROM ward_admissions 
GROUP BY severity;









