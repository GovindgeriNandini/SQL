--RIGHT JOIN 
--RIGHT JOIN returns ALL rows from the right table + matching rows from left. Unmatched left rows show NULL.

--Q1. Get all orders and customer names — orders with no customer show NULL.
SELECT c.FirstName, c.LastName, o.ProductName, o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;


--Q2. Find all orders that have no matching customer.
SELECT o.*
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.CustomerID IS NULL;

--Note: Opposite of LEFT JOIN pattern — check NULL on the LEFT table to find unmatched RIGHT rows.

--Q3. Get all orders and customer city — only for orders above 10000.
SELECT c.FirstName, c.LastName, c.City, o.ProductName, o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Amount > 10000;

--Q4. Find total amount of orders for each customer — include orders with no customer.
SELECT ISNULL(c.FirstName, 'No Customer') AS FirstName,
       ISNULL(c.LastName, '') AS LastName,
       ISNULL(SUM(o.Amount), 0) AS TotalSpent
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;


--Q5. Get all orders placed after 2023-04-01 with customer names — keep orders with no customer.
SELECT c.FirstName, c.LastName, o.OrderDate
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate > '2023-04-01';
