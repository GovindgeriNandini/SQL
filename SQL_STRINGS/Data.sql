CREATE DATABASE STRINGS;
USE STRINGS;

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
FullName VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(20),
Department VARCHAR(50),
JobTitle VARCHAR(100),
City VARCHAR(50),
JoinDate DATE,
Salary DECIMAL(10,2),
Status VARCHAR(20)
);

INSERT INTO Employees VALUES
(1,  'arjun reddy',        'arjun.reddy@company.com',    '9876543210', 'Engineering', 'software engineer',      'Hyderabad', '2019-03-15', 85000,  'active'),
(2,  'PRIYA SHARMA',       'PRIYA.SHARMA@COMPANY.COM',   '9812345678', 'Marketing',   'MARKETING ANALYST',      'Mumbai',    '2020-07-01', 65000,  'ACTIVE'),
(3,  'Rahul Verma',        'rahul.verma@company.com',    '9823456789', 'Engineering', 'Senior Engineer',        'Delhi',     '2018-11-20', 95000,  'active'),
(4,  '  Sneha Patel  ',    'sneha.patel@company.com',    '9834567890', 'HR',          'HR Manager',             'Ahmedabad', '2017-05-10', 75000,  'Active'),
(5,  'kiran rao',          'kiran.rao@company.com',      '9845678901', 'Sales',       'sales executive',        'Hyderabad', '2021-02-28', 55000,  'active'),
(6,  'DIVYA NAIR',         'divya.nair@company.com',     '9856789012', 'Engineering', 'JUNIOR ENGINEER',        'Mumbai',    '2022-08-15', 60000,  'INACTIVE'),
(7,  'Amit Singh',         'amit.singh@company.com',     '9867890123', 'Finance',     'Financial Analyst',      'Delhi',     '2016-12-01', 90000,  'active'),
(8,  '  pooja mehta  ',    'pooja.mehta@company.com',    '9878901234', 'Marketing',   'content writer',         'Pune',      '2023-01-10', 48000,  'Active'),
(9,  'VIKRAM DAS',         'vikram.das@company.com',     '9889012345', 'Sales',       'SALES MANAGER',          'Bangalore', '2019-09-22', 80000,  'active'),
(10, 'ananya pillai',      'ananya.pillai@company.com',  '9890123456', 'HR',          'hr executive',           'Chennai',   '2022-04-05', 52000,  'INACTIVE'),
(11, 'Rohan Joshi',        'rohan.joshi@company.com',    '9901234567', 'Engineering', 'Tech Lead',              'Hyderabad', '2015-06-30', 120000, 'active'),
(12, 'MEERA IYER',         'meera.iyer@company.com',     '9912345678', 'Finance',     'FINANCE MANAGER',        'Bangalore', '2014-03-18', 110000, 'Active'),
(13, 'suresh babu',        'suresh.babu@company.com',    '9923456789', 'Sales',       'sales executive',        'Hyderabad', '2023-06-01', 50000,  'active'),
(14, 'Neha Gupta',         'neha.gupta@company.com',     '9934567890', 'Engineering', 'Software Engineer',      'Delhi',     '2020-10-15', 78000,  'INACTIVE'),
(15, '  ravi kumar  ',     'ravi.kumar@company.com',     '9945678901', 'HR',          'hr manager',             'Mumbai',    '2018-08-20', 72000,  'active');