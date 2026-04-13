 --FULL OUTER JOIN 
--FULL OUTER JOIN returns ALL rows from BOTH tables — NULLs where there is no match on either side.

--Q1. Get all customers and all orders — show NULLs on both sides.
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;

--Q2. Find all unmatched rows from both tables.
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL OR c.CustomerID IS NULL;

--Note: OR combines both NULL checks — customers with no orders AND orders with no customer.

--Q3. Show all customers and orders where amount is above 5000 or NULL.
SELECT *
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.Amount > 5000 OR o.Amount IS NULL;

--Note: OR Amount IS NULL keeps unmatched left rows — without it they would be filtered out.

--Q4. Total amount per customer including unmatched rows — replace NULLs.
SELECT ISNULL(c.FirstName, 'No Customer') AS FirstName,
       ISNULL(c.LastName, '') AS LastName,
       ISNULL(SUM(o.Amount), 0) AS TotalSpent
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;


--Q5. Show all customers and orders with a Status column: 'Has Order', 'No Order', or 'No Customer'.
SELECT ISNULL(c.FirstName, 'No Customer') + ' '
            + ISNULL(c.LastName, '') AS FullName,
       o.OrderID,
       o.ProductName,
       o.Amount,
       CASE
           WHEN c.CustomerID IS NULL THEN 'No Customer'
           WHEN o.OrderID IS NULL    THEN 'No Order'
           ELSE 'Has Order'
       END AS Status
FROM Customers c
FULL OUTER JOIN Orders o ON c.CustomerID = o.CustomerID;
