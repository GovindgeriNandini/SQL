 --INNER JOIN 
--INNER JOIN returns only matching rows from both tables.

--Q1. Get all orders with the customer full name who placed them.
SELECT c.CustomerID,
       c.FirstName + ' ' + c.LastName AS FullName,
       o.ProductName,
       o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;


--Q2. Find all customers from Hyderabad and their orders.
SELECT c.FirstName + ' ' + c.LastName AS FullName,
       o.ProductName,
       c.City
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.City = 'Hyderabad';

--Q3. Get total amount spent by each customer, show full name.
SELECT c.CustomerID,
       c.FirstName + ' ' + c.LastName AS FullName,
       SUM(o.Amount) AS TotalSpent
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

--Note: Always GROUP BY CustomerID too — two customers may share the same name!

--Q4. List all orders with product category from Products table.
SELECT o.OrderID,
       o.ProductName,
       o.Amount,
       p.Category
FROM Orders o
INNER JOIN Products p ON o.ProductName = p.ProductName;

--Note: In real databases, always link through IDs (ProductID), not names — names can change or have typos.

--Q5. Find customers who ordered a Laptop — show name and city.
SELECT c.FirstName,
       c.LastName,
       c.City,
       o.ProductName
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.ProductName = 'Laptop';
