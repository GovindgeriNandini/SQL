CREATE DATABASE DATES;

USE DATES;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    JoinDate DATE,
    BirthDate DATE,
    LastWorkingDate DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1,  'Arjun Reddy',     'Engineering', 'Hyderabad', '2019-03-15', '1995-06-10', NULL,          85000),
(2,  'Priya Sharma',    'Marketing',   'Mumbai',    '2020-07-01', '1993-09-25', NULL,          65000),
(3,  'Rahul Verma',     'Engineering', 'Delhi',     '2018-11-20', '1990-12-05', NULL,          95000),
(4,  'Sneha Patel',     'HR',          'Ahmedabad', '2017-05-10', '1988-04-18', '2023-12-31',  75000),
(5,  'Kiran Rao',       'Sales',       'Hyderabad', '2021-02-28', '1996-01-30', NULL,          55000),
(6,  'Divya Nair',      'Engineering', 'Mumbai',    '2022-08-15', '1998-07-22', NULL,          60000),
(7,  'Amit Singh',      'Finance',     'Delhi',     '2016-12-01', '1987-03-14', NULL,          90000),
(8,  'Pooja Mehta',     'Marketing',   'Pune',      '2023-01-10', '1999-11-02', NULL,          48000),
(9,  'Vikram Das',      'Sales',       'Bangalore', '2019-09-22', '1992-08-19', NULL,          80000),
(10, 'Ananya Pillai',   'HR',          'Chennai',   '2022-04-05', '1997-05-11', NULL,          52000),
(11, 'Rohan Joshi',     'Engineering', 'Hyderabad', '2015-06-30', '1985-02-28', NULL,          120000),
(12, 'Meera Iyer',      'Finance',     'Bangalore', '2014-03-18', '1986-10-09', NULL,          110000),
(13, 'Suresh Babu',     'Sales',       'Hyderabad', '2023-06-01', '2000-01-01', NULL,          50000),
(14, 'Neha Gupta',      'Engineering', 'Delhi',     '2020-10-15', '1994-12-12', NULL,          78000),
(15, 'Ravi Kumar',      'HR',          'Mumbai',    '2018-08-20', '1991-07-07', '2022-09-30',  72000);
