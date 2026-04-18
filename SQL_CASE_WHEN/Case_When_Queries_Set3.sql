--Q1. Label each patient's age group: patients under 18 as "Minor", 18–59 as "Adult", 
		--and 60 and above as "Senior". Show patient name, age, and the label.

SELECT full_name, age,
CASE 
	WHEN age < 18 THEN 'Minor'
	WHEN age <= 59 THEN 'Adult'
	ELSE 'Senior' 
END AS age_group
FROM patients;