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




