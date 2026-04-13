--Q1. Get all employees with their department name.
SELECT e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

--Note: LEFT JOIN — keep ALL employees even those with no department. Original used RIGHT JOIN which also works but LEFT is more readable.

--Q2. Find all employees who have no department assigned.
SELECT e.FirstName, e.LastName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

--Note: LEFT JOIN + IS NULL on right table = find unmatched rows pattern.

--Q3. Get all projects with their department name — include projects with no department.
SELECT p.ProjectName, d.DepartmentName
FROM Projects p
LEFT JOIN Departments d ON p.DepartmentID = d.DepartmentID;

--Note: Projects on LEFT — want all projects. Department info is optional.

--Q4. List all employees and the projects they are working on.
SELECT e.FirstName, e.LastName, p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p ON ep.ProjectID = p.ProjectID;

--Note: Multi-table JOIN through bridge table. Employees -> EmployeeProjects -> Projects. EmployeeProjects is the junction/bridge table.

--Q5. Find employees not assigned to any project.
SELECT e.FirstName, e.LastName
FROM Employees e
LEFT JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL;

--Note: No need to join Projects table — just check if EP has no match for the employee.

--Q6. Get all departments and count of employees in each — include departments with no employees.
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

--Note: COUNT(e.EmployeeID) not COUNT(*) or COUNT(e.DepartmentID) — always count primary key. COUNT never returns NULL so ISNULL not needed.

--Q7. Find projects with budget above 300000 — show department name and location.
SELECT p.ProjectName, p.Budget, d.DepartmentName, d.Location
FROM Projects p
LEFT JOIN Departments d ON p.DepartmentID = d.DepartmentID
WHERE p.Budget > 300000;

--Q8. Get each employee full name, department and project name.
SELECT e.FirstName + ' ' + e.LastName AS FullName,
       d.DepartmentName,
       p.ProjectName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
LEFT JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p ON ep.ProjectID = p.ProjectID;

--Note: 4-table JOIN — two separate paths from Employees: one to Departments, one through EmployeeProjects to Projects.

--Q9. Find departments that have no projects assigned.
SELECT d.DepartmentName, p.ProjectName
FROM Departments d
LEFT JOIN Projects p ON d.DepartmentID = p.DepartmentID
WHERE p.ProjectID IS NULL;


--Q10. Get total hours worked per project — show project name and total hours.
SELECT p.ProjectName,
       ISNULL(SUM(ep.HoursWorked), 0) AS TotalHours
FROM Projects p
LEFT JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
GROUP BY p.ProjectName;

--Note: SUM can return NULL for projects with no employees — ISNULL needed here.

--Q11. Find all employees working on Active projects only.
SELECT e.FirstName, e.LastName, p.ProjectName, p.Status
FROM Employees e
INNER JOIN EmployeeProjects ep ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE p.Status = 'Active';

--Note: INNER JOIN is correct here — only want employees WITH active projects. No NULLs needed. Rule: Need ALL rows = LEFT/RIGHT JOIN. Only matching rows = INNER JOIN.

--Q12. Get total salary per department — include departments with no employees showing 0.
SELECT d.DepartmentName,
       ISNULL(SUM(e.Salary), 0) AS TotalSalary
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;


--Q13. Find each employee and their manager's name (Self JOIN).
SELECT e.FirstName AS EmployeeName,
       ISNULL(m.FirstName, 'No Manager') AS ManagerName
FROM Employees e
LEFT JOIN Employees m ON e.ManagerID = m.EmployeeID;
