-- LEVEL - 1 : SELECT
-- 1. Display all columns from the employee table.
	SELECT * FROM employee ;
	
-- 2. Display only employee names.
SELECT employee_name FROM employee;

-- 3. Display employee ID, employee name and salary.
SELECT employee_id ,employee_name ,salary FROM employee;

-- 4. Display employee name and email.
SELECT employee_name,email FROM employee;

-- 5. Display employee name, gender and city.
select employee_name,gender,city from employee;

-- 6. Display employee name and job role.
select employee_name,job_role from employee; 

-- 7. Display all columns from the department table.
select * from department ;

-- 8. Display department name and location.
select department_name,location from department;

-- 9. Display employee name and salary using column aliases.
select employee_name as emp_name ,salary as emp_sal from employee;

-- 10. Display employee name as `Employee_Name` and salary as `Monthly_Salary`.
select employee_name as Employee_Name, salary as Monthly_Salary from employee;

-- 11. Display employee ID, name, department ID and hire date.
select employee_id,employee_name,department_id,hire_date from employee;
-- 12. Retrieve only the first 10 employee records.
select * from employee limit 10;
-- 13. Display employee names without displaying their IDs.
select employee_name from employee;
-- 14. Display all employee records in their original table retrieval order.
select * from employee;
-- 15. Write a query to retrieve only the columns required for an employee contact list.

select employee_name,email from employee;
-- ------------------------------------------
SELECT
    employee_name AS details,
    email AS `emp details`
FROM employee;



-- Can we use a column alias in the WHERE clause? Why?
-- No, because before selection , it evaluates the where condition, it takes original col names only.

-- Can we use a column alias in GROUP BY?




-- Can we use a column alias in ORDER BY?



-- What happens if two columns have the same alias?



-- Can we assign an alias to an expression such as salary * 12?



-- What is the difference between SELECT * and SELECT employee.*?



-- Can we use SELECT without FROM in MySQL?



-- What is the output of SELECT 10 + 20 AS result?



-- What happens if we select a column that doesn't exist?



-- Can we retrieve the same column multiple times with different aliases?