CREATE DATABASE MIXED;
USE MIXED;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    JoinDate DATE,
    BirthDate DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1,  'Arjun Reddy',     'arjun.reddy@company.com',    'Engineering', 'Hyderabad', '2019-03-15', '1995-06-10', 85000),
(2,  'Priya Sharma',    'priya.sharma@gmail.com',     'Marketing',   'Mumbai',    '2020-07-01', '1993-09-25', 65000),
(3,  'Rahul Verma',     'rahul.verma@company.com',    'Engineering', 'Delhi',     '2018-11-20', '1990-12-05', 95000),
(4,  'Sneha Patel',     'sneha.patel@yahoo.com',      'HR',          'Ahmedabad', '2017-05-10', '1988-04-18', 75000),
(5,  'Kiran Rao',       'kiran.rao@company.com',      'Sales',       'Hyderabad', '2021-02-28', '1996-01-30', 55000),
(6,  'Divya Nair',      'divya.nair@gmail.com',       'Engineering', 'Mumbai',    '2022-08-15', '1998-07-22', 60000),
(7,  'Amit Singh',      'amit.singh@company.com',     'Finance',     'Delhi',     '2016-12-01', '1987-03-14', 90000),
(8,  'Pooja Mehta',     'pooja.mehta@yahoo.com',      'Marketing',   'Pune',      '2023-01-10', '1999-11-02', 48000),
(9,  'Vikram Das',      'vikram.das@company.com',     'Sales',       'Bangalore', '2019-09-22', '1992-08-19', 80000),
(10, 'Ananya Pillai',   'ananya.pillai@gmail.com',    'HR',          'Chennai',   '2022-04-05', '1997-05-11', 52000),
(11, 'Rohan Joshi',     'rohan.joshi@company.com',    'Engineering', 'Hyderabad', '2015-06-30', '1985-02-28', 120000),
(12, 'Meera Iyer',      'meera.iyer@yahoo.com',       'Finance',     'Bangalore', '2014-03-18', '1986-10-09', 110000),
(13, 'Suresh Babu',     'suresh.babu@company.com',    'Sales',       'Hyderabad', '2023-06-01', '2000-01-01', 50000),
(14, 'Neha Gupta',      'neha.gupta@gmail.com',       'Engineering', 'Delhi',     '2020-10-15', '1994-12-12', 78000),
(15, 'Ravi Kumar',      'ravi.kumar@yahoo.com',       'HR',          'Mumbai',    '2018-08-20', '1991-07-07', 72000),
(16, 'Ajay Kumar',      'ajay.kumar@company.com',     'Sales',       'Chennai',   '2019-01-05', '1993-03-03', 67000),
(17, 'Anil Sharma',     'anil.sharma@gmail.com',      'Marketing',   'Delhi',     '2021-11-11', '1996-06-06', 58000),
(18, 'Asha Reddy',      'asha.reddy@company.com',     'HR',          'Hyderabad', '2022-12-25', '1998-02-14', 53000),
(19, 'Arun Kumar',      'arun.kumar@yahoo.com',       'Finance',     'Pune',      '2017-07-07', '1992-09-09', 88000),
(20, 'Deepak Singh',    'deepak.singh@company.com',   'Engineering', 'Bangalore', '2016-04-04', '1989-11-11', 99000);