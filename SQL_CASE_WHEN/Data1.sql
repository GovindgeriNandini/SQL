CREATE TABLE employees (
  emp_id     INT PRIMARY KEY,
  name       VARCHAR(100),
  department VARCHAR(50),
  salary     INT,
  years_exp  INT,
  status     VARCHAR(10),
  manager_id INT
);

INSERT INTO employees VALUES
(1,'Arun Kumar','Engineering',95000,7,'Active',NULL),
(2,'Priya Sharma','Engineering',72000,3,'Active',1),
(3,'Ravi Menon','Sales',48000,1,'Active',7),
(4,'Sneha Iyer','HR',55000,5,'Inactive',7),
(5,'Karan Patel','Sales',62000,4,'Active',7),
(6,'Meera Nair','Engineering',110000,10,'Active',1),
(7,'Rohit Das','HR',85000,8,'Active',NULL),
(8,'Divya Rao','Marketing',67000,6,'Active',NULL),
(9,'Arjun Bose','Marketing',43000,2,'Inactive',8),
(10,'Nisha Singh','Sales',38000,1,'Active',7);


CREATE TABLE orders (
  order_id   INT PRIMARY KEY,
  emp_id     INT,
  product    VARCHAR(50),
  amount     INT,
  order_date DATE,
  region     VARCHAR(20)
);

INSERT INTO orders VALUES
(101,3,'Laptop',85000,'2024-01-10','North'),
(102,5,'Phone',22000,'2024-02-14','South'),
(103,3,'Tablet',35000,'2024-03-05','North'),
(104,10,'Laptop',90000,'2024-04-20','East'),
(105,5,'Monitor',18000,'2024-05-11','South'),
(106,3,'Phone',25000,'2024-06-01','West'),
(107,10,'Tablet',40000,'2024-07-19','East'),
(108,5,'Laptop',78000,'2024-08-30','South');