CREATE DATABASE BASICS; 
USE BASICS;

CREATE TABLE Students (
    StudentID    INT PRIMARY KEY,
    FirstName    VARCHAR(50),
    LastName     VARCHAR(50),
    City         VARCHAR(50),
    Age          INT,
    Grade        VARCHAR(5),
    Score        DECIMAL(5,2),
    Subject      VARCHAR(50),
    EnrollmentDate DATE,
    FeesPaid     VARCHAR(3)
);

INSERT INTO Students VALUES
(1,  'Ravi',   'Kumar',   'Hyderabad', 22, 'A', 91.5, 'Maths',   '2022-06-01', 'Yes'),
(2,  'Priya',  'Sharma',  'Mumbai',    20, 'B', 75.0, 'Science', '2022-06-01', 'Yes'),
(3,  'Arjun',  'Reddy',   'Hyderabad', 23, 'A', 88.0, 'Maths',   '2022-07-15', 'No'),
(4,  'Sneha',  'Patel',   'Ahmedabad', 21, 'C', 60.5, 'English', '2022-06-01', 'Yes'),
(5,  'Kiran',  'Rao',     'Hyderabad', 24, 'B', 78.0, 'Science', '2023-01-10', 'No'),
(6,  'Divya',  'Nair',    'Mumbai',    20, 'A', 95.0, 'Maths',   '2022-06-01', 'Yes'),
(7,  'Rahul',  'Verma',   'Delhi',     25, 'D', 45.0, 'English', '2023-01-10', 'Yes'),
(8,  'Neha',   'Gupta',   'Delhi',     22, 'B', 80.5, 'Science', '2022-07-15', 'No'),
(9,  'Amit',   'Singh',   'Bangalore', 21, 'C', 58.0, 'Maths',   '2023-01-10', 'Yes'),
(10, 'Pooja',  'Mehta',   'Mumbai',    23, 'A', 92.0, 'English', '2022-06-01', 'Yes'),
(11, 'Vikram', 'Das',     'Bangalore', 26, 'D', 40.0, 'Science', '2023-06-01', 'No'),
(12, 'Ananya', 'Pillai',  'Hyderabad', 20, 'B', 77.5, 'English', '2022-07-15', 'Yes'),
(13, 'Rohan',  'Joshi',   'Pune',      22, 'C', 63.0, 'Maths',   '2023-06-01', 'No'),
(14, 'Meera',  'Iyer',    'Chennai',   21, 'A', 89.5, 'Science', '2022-06-01', 'Yes'),
(15, 'Suresh', 'Babu',    'Hyderabad', 24, 'C', 55.0, 'English', '2023-06-01', 'No');

