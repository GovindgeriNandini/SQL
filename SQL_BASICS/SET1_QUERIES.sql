-- Q1. Get full names and Score of all students, ordered by Score highest to lowest.

SELECT FirstName + ' ' + LastName AS FullName, Score
FROM Students
ORDER BY Score DESC;


--Q2. Find all students from Hyderabad or Mumbai.
SELECT FirstName, LastName, City
FROM Students
WHERE City IN ('Hyderabad', 'Mumbai');

--Q3. Get the average, min, and max score for each Subject.
SELECT Subject,
       ROUND(AVG(Score), 2) AS Average,
       MIN(Score) AS Minimum,
       MAX(Score) AS Maximum
FROM Students
GROUP BY Subject;

--Q4. List students whose score is between 70 and 90 (without BETWEEN).
SELECT FirstName, LastName, Score
FROM Students
WHERE Score >= 70 AND Score <= 90;

--Q5. Find students whose first name starts with 'R'.
SELECT FirstName, LastName
FROM Students
WHERE FirstName LIKE 'R%';

--Q7. List students who have not paid fees and have Grade 'C' or 'D'.
SELECT FirstName, LastName, Grade
FROM Students
WHERE FeesPaid = 'No'
AND (Grade = 'C' OR Grade = 'D');

--Q8. Find the top 3 highest scoring students.
SELECT TOP 3 FirstName, LastName, Score
FROM Students
ORDER BY Score DESC;

--Q9. Get all distinct cities where students are enrolled.
SELECT DISTINCT City
FROM Students;

--Q10. List students whose Score is above the overall average score.
SELECT FirstName, LastName, Score
FROM Students
WHERE Score > (SELECT AVG(Score) FROM Students);

