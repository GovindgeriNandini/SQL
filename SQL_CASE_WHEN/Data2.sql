CREATE TABLE departments (
    dept_id       INT PRIMARY KEY,
    dept_name     VARCHAR(50),
    floor_number  INT,
    budget        DECIMAL(12,2)
);

CREATE TABLE doctors (
    doctor_id     INT PRIMARY KEY,
    full_name     VARCHAR(100),
    specialization VARCHAR(50),
    dept_id       INT REFERENCES departments(dept_id),
    experience_yrs INT,
    hourly_rate   DECIMAL(8,2),
    is_available  BOOLEAN
);

CREATE TABLE patients (
    patient_id    INT PRIMARY KEY,
    full_name     VARCHAR(100),
    age           INT,
    gender        CHAR(1),
    blood_group   VARCHAR(5),
    city          VARCHAR(50),
    insurance_type VARCHAR(30)   -- 'Premium','Basic','None'
);


CREATE TABLE appointments (
    appt_id       INT PRIMARY KEY,
    patient_id    INT REFERENCES patients(patient_id),
    doctor_id     INT REFERENCES doctors(doctor_id),
    appt_date     DATE,
    appt_type     VARCHAR(20),  -- 'Emergency','Routine','Follow-up'
    duration_mins INT,
    status        VARCHAR(20)   -- 'Completed','Cancelled','Pending'
);



CREATE TABLE billing (
    bill_id       INT PRIMARY KEY,
    appt_id       INT REFERENCES appointments(appt_id),
    patient_id    INT REFERENCES patients(patient_id),
    consultation_fee DECIMAL(10,2),
    medicine_cost    DECIMAL(10,2),
    test_charges     DECIMAL(10,2),
    discount         DECIMAL(5,2),  -- percentage
    payment_status   VARCHAR(20),   -- 'Paid','Pending','Waived'
    payment_method   VARCHAR(20)    -- 'Cash','Card','Insurance'
);


CREATE TABLE ward_admissions (
    admission_id  INT PRIMARY KEY,
    patient_id    INT REFERENCES patients(patient_id),
    dept_id       INT REFERENCES departments(dept_id),
    admit_date    DATE,
    discharge_date DATE,
    ward_type     VARCHAR(20),   -- 'ICU','General','Private'
    severity      INT            -- 1 (low) to 5 (critical)
);


-- DEPARTMENTS
INSERT INTO departments VALUES
(1, 'Cardiology',    3, 850000),
(2, 'Neurology',     4, 920000),
(3, 'Orthopedics',   2, 670000),
(4, 'Pediatrics',    1, 540000),
(5, 'Emergency',     0, 1200000),
(6, 'Oncology',      5, 1100000);


-- DOCTORS
INSERT INTO doctors VALUES
(1,  'Dr. Arjun Mehta',    'Cardiologist',  1, 18, 4500.00, TRUE),
(2,  'Dr. Priya Shah',     'Neurologist',   2, 12, 4200.00, TRUE),
(3,  'Dr. Rajan Nair',     'Orthopedic',    3,  5, 3200.00, FALSE),
(4,  'Dr. Sneha Kulkarni', 'Pediatrician',  4, 20, 3800.00, TRUE),
(5,  'Dr. Vikram Rao',     'Emergency',     5,  8, 5000.00, TRUE),
(6,  'Dr. Anita Desai',    'Oncologist',    6, 15, 6000.00, TRUE),
(7,  'Dr. Mohit Joshi',    'Cardiologist',  1,  3, 3000.00, FALSE),
(8,  'Dr. Rekha Iyer',     'Neurologist',   2, 25, 5500.00, TRUE),
(9,  'Dr. Suresh Pillai',  'Orthopedic',    3, 10, 3700.00, TRUE),
(10, 'Dr. Divya Menon',    'Pediatrician',  4,  2, 2800.00, TRUE);

-- PATIENTS
INSERT INTO patients VALUES
(1,  'Ramesh Kumar',    67, 'M', 'A+',  'Mumbai',    'Premium'),
(2,  'Sunita Verma',    34, 'F', 'B-',  'Pune',      'Basic'),
(3,  'Aryan Singh',      8, 'M', 'O+',  'Delhi',     'Premium'),
(4,  'Kavita Patil',    52, 'F', 'AB+', 'Nashik',    'None'),
(5,  'Deepak Sharma',   45, 'M', 'O-',  'Mumbai',    'Basic'),
(6,  'Meena Joshi',     72, 'F', 'A-',  'Nagpur',    'Premium'),
(7,  'Rohit Gupta',     29, 'M', 'B+',  'Hyderabad', 'None'),
(8,  'Anjali Rao',      16, 'F', 'A+',  'Chennai',   'Basic'),
(9,  'Nitin Malhotra',  58, 'M', 'O+',  'Kolkata',   'Premium'),
(10, 'Pooja Nair',      41, 'F', 'AB-', 'Bangalore', 'None'),
(11, 'Suresh Tiwari',   63, 'M', 'B+',  'Mumbai',    'Basic'),
(12, 'Lakshmi Iyer',    78, 'F', 'A+',  'Pune',      'Premium');

-- APPOINTMENTS
INSERT INTO appointments VALUES
(1,  1,  1, '2024-01-10', 'Routine',   30, 'Completed'),
(2,  2,  2, '2024-01-11', 'Emergency', 60, 'Completed'),
(3,  3,  4, '2024-01-12', 'Routine',   20, 'Completed'),
(4,  4,  6, '2024-01-13', 'Follow-up', 45, 'Cancelled'),
(5,  5,  1, '2024-01-14', 'Emergency', 90, 'Completed'),
(6,  6,  8, '2024-01-15', 'Routine',   30, 'Completed'),
(7,  7,  5, '2024-01-16', 'Emergency', 120,'Completed'),
(8,  8,  4, '2024-01-17', 'Routine',   25, 'Pending'),
(9,  9,  1, '2024-01-18', 'Follow-up', 40, 'Completed'),
(10,10,  3, '2024-01-19', 'Routine',   35, 'Completed'),
(11,11,  6, '2024-01-20', 'Follow-up', 50, 'Completed'),
(12,12,  2, '2024-01-21', 'Emergency', 75, 'Completed');


-- BILLING
INSERT INTO billing VALUES
(1,  1,  1,  1500, 800,  500,  10, 'Paid',    'Insurance'),
(2,  2,  2,  2000, 1200, 800,   5, 'Paid',    'Card'),
(3,  3,  3,  1000, 300,  200,  15, 'Paid',    'Insurance'),
(4,  4,  4,  2500, 0,    0,     0, 'Waived',  'Insurance'),
(5,  5,  5,  1500, 900,  1200,  0, 'Pending', 'Cash'),
(6,  6,  6,  3000, 500,  2000, 20, 'Paid',    'Insurance'),
(7,  7,  7,  5000, 2000, 3000,  0, 'Paid',    'Card'),
(8,  8,  8,  1000, 400,  0,     0, 'Pending', 'Cash'),
(9,  9,  9,  1500, 700,  600,  10, 'Paid',    'Insurance'),
(10,10, 10,  1200, 500,  400,   0, 'Paid',    'Card'),
(11,11, 11,  2500, 800,  1500,  5, 'Pending', 'Cash'),
(12,12, 12,  3000, 1000, 2500, 25, 'Paid',    'Insurance');

-- WARD ADMISSIONS
INSERT INTO ward_admissions VALUES
(1,  1,  1, '2024-01-10', '2024-01-15', 'Private', 3),
(2,  2,  2, '2024-01-11', '2024-01-18', 'ICU',     5),
(3,  4,  6, '2024-01-12', '2024-01-20', 'General', 4),
(4,  5,  1, '2024-01-14', '2024-01-17', 'ICU',     5),
(5,  6,  2, '2024-01-15', '2024-01-22', 'Private', 2),
(6,  7,  5, '2024-01-16', '2024-01-16', 'ICU',     5),
(7,  9,  1, '2024-01-18', '2024-01-23', 'General', 2),
(8, 11,  6, '2024-01-20', '2024-02-01', 'Private', 3),
(9, 12,  2, '2024-01-21', '2024-01-28', 'ICU',     4);