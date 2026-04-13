--LEFT JOIN 

--LEFT JOIN returns ALL rows from the left table + matching rows from right. Unmatched right rows show NULL.

--Q1. Get all customers and their orders — customers with no orders show NULL.
SELECT *
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;


--Q2. Find all customers who have never placed an order.
SELECT c.FirstName, c.LastName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


--Q3. Get total amount spent per customer — customers with no orders show 0.

SELECT c.FirstName,
       c.LastName,
       ISNULL(SUM(o.Amount), 0) AS TotalSpent
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;

--Note: SUM can return NULL — use ISNULL(SUM(...), 0). COUNT never returns NULL so ISNULL not needed.

--Q4. Get all customers and their orders, only show customers older than 25.
SELECT c.*, o.ProductName, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.Age > 25;


--Q5. Get all customers and orders placed after 2023-03-01 — keep customers with no orders.
SELECT *
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
    AND o.OrderDate > '2023-03-01';


