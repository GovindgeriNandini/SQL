CREATE DATABASE JOINS;

USE JOINS

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName  VARCHAR(50),
    LastName   VARCHAR(50),
    City       VARCHAR(50),
    Age        INT
);

CREATE TABLE Orders (
    OrderID     INT PRIMARY KEY,
    CustomerID  INT,
    ProductName VARCHAR(50),
    Amount      DECIMAL(10,2),
    OrderDate   DATE
);

CREATE TABLE Products (
    ProductID   INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category    VARCHAR(50),
    Price       DECIMAL(10,2)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID     INT,
    ProductID   INT,
    Quantity    INT
);
INSERT INTO Customers VALUES
(1,  'Ravi',   'Kumar',  'Hyderabad', 22),
(2,  'Priya',  'Sharma', 'Mumbai',    25),
(3,  'Arjun',  'Reddy',  'Hyderabad', 28),
(4,  'Sneha',  'Patel',  'Ahmedabad', 23),
(5,  'Kiran',  'Rao',    'Bangalore', 30),
(6,  'Divya',  'Nair',   'Mumbai',    27),
(7,  'Rahul',  'Verma',  'Delhi',     24),
(8,  'Neha',   'Gupta',  'Delhi',     26),
(9,  'Amit',   'Singh',  'Pune',      29),
(10, 'Pooja',  'Mehta',  'Chennai',   22);

INSERT INTO Orders VALUES
(101, 1,  'Laptop',   75000.00, '2023-01-15'),
(102, 2,  'Phone',    45000.00, '2023-02-20'),
(103, 1,  'Mouse',     1200.00, '2023-03-10'),
(104, 3,  'Keyboard',  2500.00, '2023-03-15'),
(105, 5,  'Monitor',  18000.00, '2023-04-01'),
(106, 6,  'Laptop',   75000.00, '2023-04-18'),
(107, 2,  'Headphones', 3000.00,'2023-05-05'),
(108, 8,  'Phone',    45000.00, '2023-05-20'),
(109, 3,  'Monitor',  18000.00, '2023-06-11'),
(110, 10, 'Keyboard',  2500.00, '2023-06-25');

INSERT INTO Products VALUES
(1, 'Laptop',     'Electronics', 75000.00),
(2, 'Phone',      'Electronics', 45000.00),
(3, 'Mouse',      'Electronics',  1200.00),
(4, 'Keyboard',   'Electronics',  2500.00),
(5, 'Monitor',    'Electronics', 18000.00),
(6, 'Headphones', 'Electronics',  3000.00),
(7, 'Desk Chair', 'Furniture',   12000.00),
(8, 'Notebook',   'Stationery',    150.00);

INSERT INTO OrderItems VALUES
(1,  101, 1, 1),
(2,  101, 3, 2),
(3,  102, 2, 1),
(4,  103, 3, 1),
(5,  104, 4, 1),
(6,  105, 5, 2),
(7,  106, 1, 1),
(8,  107, 6, 1),
(9,  108, 2, 1),
(10, 109, 5, 1);

-- Extra customers with no orders (for LEFT JOIN practice)
-- ADD WHILE PERFORMING LEFT JOIN
INSERT INTO Customers VALUES
(11, 'Vikram', 'Das',    'Bangalore', 32),
(12, 'Ananya', 'Pillai', 'Chennai',   24),
(13, 'Rohan',  'Joshi',  'Pune',      27);

-- Extra orders with no customer (for RIGHT JOIN practice)
-- ADD WHILE PERFORMING RIGHT JOIN
INSERT INTO Orders VALUES
(111, NULL, 'Tablet',     25000.00, '2023-07-01'),
(112, NULL, 'Smartwatch', 15000.00, '2023-07-15'),
(113, NULL, 'Speaker',     8000.00, '2023-08-01');

