--Q1. Get all students whose name starts with 'A' or ends with 'a'.
SELECT FirstName, LastName
FROM Students
WHERE FirstName LIKE 'A%' OR FirstName LIKE '%a';

--Q2. Find the oldest student in each City.
SELECT City, MAX(Age) AS Max_Age
FROM Students
GROUP BY City;

--Q3. Get all students from Hyderabad and scored above 80, ordered by score highest to lowest.
SELECT FirstName, LastName, Score
FROM Students
WHERE City = 'Hyderabad' AND Score > 80
ORDER BY Score DESC;

--Q4. Find the total number of students who have paid their fees.
SELECT COUNT(*) AS No_of_Students_Paid_Fees
FROM Students
WHERE FeesPaid = 'Yes';

--Q5. Get top 3 oldest students — show full name, age and grade.
SELECT TOP 3
    FirstName + ' ' + LastName AS FullName,
    Age,
    Grade
FROM Students
ORDER BY Age DESC;


--Q6. Find all students whose score is NULL.
SELECT * FROM Students
WHERE Score IS NULL;

--Q7. Get average score of students in each City, ordered by average highest to lowest.
SELECT City,
       ROUND(AVG(Score), 2) AS Average_Score
FROM Students
GROUP BY City
ORDER BY Average_Score DESC;

--Q8. Find all students not from Hyderabad, Mumbai or Delhi.
SELECT FirstName, LastName, City
FROM Students
WHERE City NOT IN ('Hyderabad', 'Mumbai', 'Delhi');


--Q9. Get highest scoring student in each Subject.
SELECT FirstName, LastName, Subject, Score
FROM Students s
WHERE Score = (
    SELECT MAX(Score)
    FROM Students
    WHERE Subject = s.Subject
);

--Q10. Find all students whose score is above 80 and grade is NOT 'A'.
SELECT FirstName, LastName, Score, Grade
FROM Students
WHERE Score > 80 AND Grade != 'A';


--Find the second highest score — asked in almost every SQL interview.

--Step 1 — Find the highest score:
SELECT MAX(Score) FROM Students;
-- Returns 95
--Step 2 — Find the highest score below the max:
SELECT TOP 1 FirstName, LastName, Score
FROM Students
WHERE Score < (SELECT MAX(Score) FROM Students)
ORDER BY Score DESC;
