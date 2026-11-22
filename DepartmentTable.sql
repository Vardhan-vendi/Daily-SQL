-- use vcube

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(50),
    budget DECIMAL(12,2)
);
INSERT INTO department (department_id, department_name, location, budget)
VALUES
(101, 'Human Resources', 'Hyderabad', 500000.00),
(102, 'Information Technology', 'Bangalore', 1500000.00),
(103, 'Finance', 'Chennai', 800000.00),
(104, 'Marketing', 'Mumbai', 650000.00),
(105, 'Sales', 'Delhi', 950000.00);