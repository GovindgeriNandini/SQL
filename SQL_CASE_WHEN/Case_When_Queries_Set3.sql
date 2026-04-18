--Q1. Label each patient's age group: patients under 18 as "Minor", 18–59 as "Adult", 
		--and 60 and above as "Senior". Show patient name, age, and the label.

SELECT full_name, age,
CASE 
	WHEN age < 18 THEN 'Minor'
	WHEN age <= 59 THEN 'Adult'
	ELSE 'Senior' 
END AS age_group
FROM patients;


--Q2. Show each doctor's experience tier: less than 5 years as "Junior", 5–14 years as "Mid-Level", 
		--and 15 or more as "Senior". Display doctor name, experience, and tier.

SELECT full_name, experience_yrs,
CASE
	WHEN experience_yrs < 5 THEN 'Junior'
	WHEN experience_yrs BETWEEN 5 AND 14 THEN 'Mid-Level'
	ELSE 'Senior'
END AS experience_tier
FROM doctors;


--Q3. For each bill, classify the consultation fee: below 1500 as "Low", 1500–2500 as "Moderate", above 2500 as "High". 
		--Show bill_id and the category.

SELECT bill_id, consultation_fee,
CASE 
	 WHEN consultation_fee < 1500  THEN 'Low'
	 WHEN consultation_fee BETWEEN 1500 AND 2000 THEN 'Moderate'
	 ELSE 'High'
END AS fee_category
FROM billing;
		
--Q4. Display appointment type with a priority flag: "Emergency" as "High Priority", "Routine" as "Normal", "Follow-up" as "Low Priority".
		--Show appt_id and priority.

SELECT appt_id,appt_type,
CASE 
	WHEN appt_type = 'Emergency' THEN 'High'
	WHEN appt_type = 'Routine' THEN 'Normal'
	ELSE 'Low'
END AS priority
FROM appointments;
