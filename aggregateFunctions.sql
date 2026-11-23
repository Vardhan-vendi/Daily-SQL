-- use vcube

Select * from employee;


-- 1. Find the maximum salary of employees.
	select max(salary) from employee;

-- 2. Find the minimum salary of employees.
	select min(salary) from employee;
-- 3. Find the average salary of employees whose job is MANAGER.
	select avg(salary) from employee where job_role= 'hr manager';

-- 4. Find the highest salary among SALESMAN employees.
	select max(salary) from employee where job_role= 'hr manager';

-- 5. Find the total commission in each department.

-- 6. Display departments having more than 3 employees.