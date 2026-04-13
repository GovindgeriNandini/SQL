CREATE DATABASE JOINSPRACTICE
USE JOINSPRACTICE;

CREATE TABLE Departments (
    DepartmentID   INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location       VARCHAR(50),
    ManagerID      INT
);

CREATE TABLE Employees (
    EmployeeID   INT PRIMARY KEY,
    FirstName    VARCHAR(50),
    LastName     VARCHAR(50),
    DepartmentID INT,
    ManagerID    INT,
    Salary       DECIMAL(10,2),
    HireDate     DATE
);

CREATE TABLE Projects (
    ProjectID   INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    Budget      DECIMAL(12,2),
    StartDate   DATE,
    Status      VARCHAR(20)
);

CREATE TABLE EmployeeProjects (
    EmpProjectID INT PRIMARY KEY,
    EmployeeID   INT,
    ProjectID    INT,
    HoursWorked  INT,
    Role         VARCHAR(50)
);

INSERT INTO Departments VALUES
(1, 'Engineering',  'Hyderabad', 1),
(2, 'Marketing',    'Mumbai',    4),
(3, 'HR',           'Delhi',     6),
(4, 'Finance',      'Bangalore', 7),
(5, 'Sales',        'Hyderabad', 9),
(6, 'Design',       'Pune',      NULL);


INSERT INTO Employees VALUES
(1,  'Arjun',   'Reddy',   1, NULL, 120000, '2018-03-01'),
(2,  'Divya',   'Nair',    1, 1,    85000,  '2020-06-15'),
(3,  'Rahul',   'Verma',   1, 1,    90000,  '2019-09-10'),
(4,  'Neha',    'Gupta',   2, NULL, 95000,  '2017-11-20'),
(5,  'Kiran',   'Rao',     2, 4,    60000,  '2021-01-05'),
(6,  'Sunita',  'Joshi',   3, NULL, 75000,  '2016-05-30'),
(7,  'Amit',    'Singh',   4, NULL, 110000, '2015-08-22'),
(8,  'Pooja',   'Mehta',   4, 7,    70000,  '2022-03-18'),
(9,  'Vikram',  'Das',     5, NULL, 80000,  '2019-07-11'),
(10, 'Ananya',  'Pillai',  5, 9,    55000,  '2023-02-01'),
(11, 'Rohan',   'Joshi',   NULL, NULL, 65000, '2022-11-15'),
(12, 'Meera',   'Iyer',    NULL, NULL, 72000, '2021-08-20');


INSERT INTO Projects VALUES
(1,  'Website Redesign',   1, 500000,  '2023-01-01', 'Active'),
(2,  'Mobile App',         1, 800000,  '2023-03-15', 'Active'),
(3,  'Ad Campaign',        2, 300000,  '2023-02-01', 'Completed'),
(4,  'HR System',          3, 150000,  '2023-04-01', 'Active'),
(5,  'Budget Planning',    4, 200000,  '2023-01-15', 'Completed'),
(6,  'Sales Dashboard',    5, 250000,  '2023-05-01', 'Active'),
(7,  'Brand Identity',     NULL, 180000, '2023-06-01', 'Active'),
(8,  'Data Migration',     NULL, 400000, '2023-07-01', 'On Hold');


INSERT INTO EmployeeProjects VALUES
(1,  1,  1,  120, 'Lead'),
(2,  2,  1,  80,  'Developer'),
(3,  3,  2,  100, 'Developer'),
(4,  4,  3,  60,  'Lead'),
(5,  5,  3,  40,  'Analyst'),
(6,  6,  4,  90,  'Lead'),
(7,  7,  5,  70,  'Lead'),
(8,  8,  5,  50,  'Analyst'),
(9,  9,  6,  110, 'Lead'),
(10, 10, 6,  75,  'Analyst'),
(11, 1,  2,  60,  'Reviewer');