-- use vcube



CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    hire_date DATE,
    job_role VARCHAR(50),
    city VARCHAR(50),
    department_id INT,
    manager_id INT,

    FOREIGN KEY (department_id)
        REFERENCES department(department_id),

    FOREIGN KEY (manager_id)
        REFERENCES employee(employee_id)
);


INSERT INTO employee
(employee_id, employee_name, email, gender, salary, hire_date, job_role, city, department_id, manager_id)
VALUES

(1001, 'Rahul Sharma', 'rahul@company.com', 'Male', 120000, '2018-01-15', 'HR Manager', 'Hyderabad', 101, NULL),
(1002, 'Priya Reddy', 'priya@company.com', 'Female', 150000, '2017-03-20', 'IT Manager', 'Bangalore', 102, NULL),
(1003, 'Arjun Kumar', 'arjun@company.com', 'Male', 135000, '2019-06-10', 'Finance Manager', 'Chennai', 103, NULL),
(1004, 'Sneha Patel', 'sneha@company.com', 'Female', 125000, '2018-09-05', 'Marketing Manager', 'Mumbai', 104, NULL),
(1005, 'Kiran Raju', 'kiran@company.com', 'Male', 140000, '2016-11-12', 'Sales Manager', 'Delhi', 105, NULL),

-- HR Department (101)
(1006, 'Ananya Rao', 'ananya@company.com', 'Female', 45000.00, '2022-01-10', 'HR Executive', 'Hyderabad', 101, 1001),
(1007, 'Vikram Singh', 'vikram@company.com', 'Male', 55000.00, '2021-05-15', 'Recruiter', 'Hyderabad', 101, 1001),
(1008, 'Meera Das', 'meera@company.com', 'Female', 45000.00, '2023-03-20', 'HR Analyst', 'Bangalore', 101, 1001),
(1009, 'Rohit Verma', 'rohit@company.com', 'Male', 38000.00, '2024-02-01', 'HR Assistant', 'Chennai', 101, 1001),
(1010, 'Divya Reddy', 'divya@company.com', 'Female', 60000.00, '2020-07-18', 'HR Specialist', 'Hyderabad', 101, 1001),
(1011, 'Amit Kumar', NULL, 'Male', 45000.00, '2022-10-12', 'HR Executive', 'Mumbai', 101, 1001),
(1012, 'Pooja Sharma', 'pooja@company.com', 'Female', 52000.00, '2021-12-05', 'Recruiter', 'Delhi', 101, 1001),

-- IT Department (102)
(1013, 'Suresh Babu', 'suresh@company.com', 'Male', 95000.00, '2020-01-15', 'Java Developer', 'Bangalore', 102, 1002),
(1014, 'Keerthi Reddy', 'keerthi@company.com', 'Female', 85000.00, '2021-04-10', 'Frontend Developer', 'Hyderabad', 102, 1002),
(1015, 'Manoj Kumar', 'manoj@company.com', 'Male', 110000.00, '2019-08-22', 'Backend Developer', 'Bangalore', 102, 1002),
(1016, 'Lakshmi Devi', 'lakshmi@company.com', 'Female', 75000.00, '2022-06-15', 'QA Engineer', 'Chennai', 102, 1002),
(1017, 'Naveen Raju', 'naveen@company.com', 'Male', 95000.00, '2020-11-30', 'Java Developer', 'Bangalore', 102, 1002),
(1018, 'Swathi Rao', NULL, 'Female', 65000.00, '2023-01-05', 'Support Engineer', 'Mumbai', 102, 1002),
(1019, 'Karthik Reddy', 'karthik@company.com', 'Male', 120000.00, '2018-09-12', 'DevOps Engineer', 'Hyderabad', 102, 1002),
(1020, 'Harika Sharma', 'harika@company.com', 'Female', 85000.00, '2021-07-25', 'Frontend Developer', 'Delhi', 102, 1002),

-- Finance Department (103)
(1021, 'Venkat Rao', 'venkat@company.com', 'Male', 70000.00, '2020-02-10', 'Accountant', 'Chennai', 103, 1003),
(1022, 'Sravani Devi', 'sravani@company.com', 'Female', 80000.00, '2019-05-20', 'Financial Analyst', 'Hyderabad', 103, 1003),
(1023, 'Praveen Kumar', 'praveen@company.com', 'Male', 65000.00, '2022-08-15', 'Accountant', 'Mumbai', 103, 1003),
(1024, 'Nithya Reddy', 'nithya@company.com', 'Female', 90000.00, '2018-12-01', 'Finance Analyst', 'Chennai', 103, 1003),
(1025, 'Ramesh Babu', 'ramesh@company.com', 'Male', 70000.00, '2021-03-18', 'Auditor', 'Delhi', 103, 1003),
(1026, 'Aishwarya Rao', NULL, 'Female', 55000.00, '2023-09-10', 'Junior Accountant', 'Bangalore', 103, 1003),
(1027, 'Gopi Krishna', 'gopi@company.com', 'Male', 80000.00, '2020-10-22', 'Financial Analyst', 'Chennai', 103, 1003),

-- Marketing Department (104)
(1028, 'Neha Kapoor', 'neha@company.com', 'Female', 65000.00, '2021-01-12', 'Marketing Executive', 'Mumbai', 104, 1004),
(1029, 'Sanjay Mehta', 'sanjay@company.com', 'Male', 75000.00, '2020-04-25', 'SEO Specialist', 'Delhi', 104, 1004),
(1030, 'Ritika Sharma', 'ritika@company.com', 'Female', 85000.00, '2019-07-15', 'Marketing Analyst', 'Hyderabad', 104, 1004),
(1031, 'Abhishek Jain', 'abhishek@company.com', 'Male', 55000.00, '2022-11-05', 'Content Writer', 'Mumbai', 104, 1004),
(1032, 'Kavya Reddy', 'kavya@company.com', 'Female', 65000.00, '2021-06-20', 'Social Media Executive', 'Bangalore', 104, 1004),
(1033, 'Deepak Verma', 'deepak@company.com', 'Male', 95000.00, '2018-02-14', 'Digital Marketing Specialist', 'Delhi', 104, 1004),

-- Sales Department (105)
(1034, 'Varun Kumar', 'varun@company.com', 'Male', 60000.00, '2022-02-15', 'Sales Executive', 'Delhi', 105, 1005),
(1035, 'Mounika Rao', 'mounika@company.com', 'Female', 70000.00, '2021-05-10', 'Sales Analyst', 'Hyderabad', 105, 1005),
(1036, 'Chandra Sekhar', 'chandra@company.com', 'Male', 85000.00, '2020-08-18', 'Sales Executive', 'Chennai', 105, 1005),
(1037, 'Bhavya Reddy', 'bhavya@company.com', 'Female', 60000.00, '2023-04-12', 'Sales Coordinator', 'Bangalore', 105, 1005),
(1038, 'Tarun Sharma', 'tarun@company.com', 'Male', 75000.00, '2019-10-25', 'Business Development Executive', 'Mumbai', 105, 1005),
(1039, 'Sowmya Devi', 'sowmya@company.com', 'Female', 90000.00, '2018-06-30', 'Sales Analyst', 'Delhi', 105, 1005),
(1040, 'Ravi Teja', NULL, 'Male', 60000.00, '2024-01-08', 'Sales Executive', 'Hyderabad', 105, 1005);