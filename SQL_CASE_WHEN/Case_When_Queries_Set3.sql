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


--Q5. Label each patient's insurance coverage: "Premium" as "Full Cover", "Basic" as "Partial Cover", "None" as "Self-Pay".
		--Show patient name and coverage label

SELECT full_name, insurance_type,
CASE 
	WHEN insurance_type = 'Premium' THEN 'Full Cover'
	WHEN insurance_type = 'Basic' THEN 'Partial Cover'
	ELSE 'Self-Pay'
END AS insurance_coverage
FROM patients;


--Q6. For each doctor, display availability status as "Available Now" or "Not Available" based on the is_available column.

SELECT full_name, specialization,
CASE
	WHEN is_available = TRUE THEN 'Available Now'
	ELSE 'Not Available'
END AS availability_status
FROM doctors;

--Q7.  Classify ward admissions by ward_type: "ICU" as "Intensive Care", "Private" as "Premium Ward", "General" as "Standard Ward". 
		--Show admission_id and the ward label.

SELECT admission_id, ward_type,
CASE
	WHEN ward_type = 'ICU' THEN 'Intensive Care'
	WHEN ward_type = 'Private' THEN 'Premium Ward'
	ELSE 'Standard Ward'
END AS ward_label
FROM ward_admissions;

--Q8. Flag each appointment's duration: under 30 minutes as "Short", 30–60 minutes as "Standard", 
		--above 60 minutes as "Long". Show appt_id, duration, and flag.

SELECT appt_id, duration_mins, 
CASE
	WHEN duration_mins < 30 THEN 'Short'
	WHEN duration_mins BETWEEN 30 AND 60 THEN 'Standard'
	ELSE 'Long'
END AS duration_label
FROM appointments;


--Q9. Show each patient's gender as "Male", "Female", or "Other" based on the gender column (M/F). 
		--Show patient name and gender label.

SELECT full_name,
CASE 
	WHEN gender = 'M' THEN 'Male'
	WHEN gender = 'F' THEN 'Female'
	ELSE 'Other'
END AS gender_label
FROM patients;
