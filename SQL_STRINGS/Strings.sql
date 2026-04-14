--Q1. Display all employee names in UPPERCASE.
SELECT UPPER(FullName) AS NAMES_UPPERCASED FROM Employees;

--Q2. Display all employee names in LOWERCASE.
SELECT LOWER(FullName) AS NAMES_LOWERCASED FROM Employees;


--Q3. Find the length of each employee's FullName — order by length highest to lowest.
SELECT FullName, LEN(FullName) AS LENGTH_OF_NAMES FROM Employees ORDER BY LENGTH_OF_NAMES DESC;

--Q4. Clean up the FullName column — remove extra spaces from names that have leading/trailing spaces.
SELECT TRIM(FullName) FROM Employees;

--Q5. Extract only the first name from FullName. (Hint — use CHARINDEX to find the space, then LEFT to extract before it!)
SELECT LEFT(LTRIM(FullName), CHARINDEX(' ', LTRIM(FullName))) FROM Employees;

--Q6. Extract only the last name from FullName. (Hint — use CHARINDEX, LEN and RIGHT!)
SELECT RIGHT(TRIM(Fullname), (LEN(TRIM(Fullname))-CHARINDEX(' ', TRIM(FULLNAME))) ) FROM Employees

--Q7. Find all employees whose email contains 'gmail'. (There are none — what does an empty result tell you?)
SELECT FullName, Email FROM Employees WHERE Email LIKE '%gmail%';

--Q8. Replace the domain in all emails from @company.com to @corp.in.
SELECT REPLACE(Email, '@company', '@corp') FROM Employees;

--Q9. Find the position of '@' in each employee's email.
SELECT FullName, Email, CHARINDEX('@', TRIM(Email)) as Position FROM Employees;

--Q10. Display each employee's name and a cleaned, properly formatted version — trim spaces AND convert to proper format. (Hint — TRIM + UPPER or LOWER!)
SELECT TRIM(UPPER(FullName)) FROM Employees;

--Q11.Extract the username from email (everything before @). (Hint — combine LEFT and CHARINDEX!)
SELECT LEFT(TRIM(Email), CHARINDEX('@', TRIM(Email))-1) AS USERNAME FROM Employees;


--Q12. Find all employees where the FullName length is greater than 12 characters after trimming spaces.

SELECT FullName FROM Employees WHERE LEN(TRIM(FullName)) > 12;