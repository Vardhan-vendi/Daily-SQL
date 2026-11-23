use vcube;

-- # LEVEL 2: COMPARISON OPERATORS (20 QUESTIONS)

-- **Operators:** `=`, `!=`, `<>`, `>`, `<`, `>=`, `<=`

select * from employee;

-- 16. Find employees earning more than 80000.
  select * from employee where salary >80000; 
  
-- 17. Find employees earning less than 50000.
	select * from employee where salary <50000;
	
-- 18. Find employees earning exactly 95000.
	select * from employee where salary = 95000;
    
-- 19. Find employees whose salary is not equal to 60000.
	select * from employee where salary = 60000;
	select * from employee where salary != 60000;
    
-- 20. Find employees whose salary is greater than or equal to 75000.
	select * from employee where salary >= 75000;
    select count(1) from employee where salary >= 75000;
    
    
-- 21. Find employees whose salary is less than or equal to 55000.
	select * from employee where salary <= 55000;

-- 22. Find employees belonging to department 102.
	select * from employee where department_id = 102;
    
-- 23. Find employees who do not belong to department 101.
select * from employee where department_id != 101;

-- 24. Find employees hired after 1 January 2022.
	select * from employee where hire_date >'2022-01-01'; -- dates are to be given in quotes other wise it treats as  expression
    
-- 25. Find employees hired before 1 January 2020.
	select * from employee where hire_date < '2020-01-01';

-- 26. Find employees whose gender is Male.
	select * from employee where gender = 'Male';

-- 27. Find employees whose gender is not Female.
	select * from employee where gender != 'female';

-- 28. Find employees whose city is Hyderabad.
	select * from employee where city = 'Hyderabad';

-- 29. Find employees whose city is not Mumbai.
	select * from employee where city != 'mumbai';

-- 30. Find employees whose job role is Java Developer.
	select * from employee where job_role = 'Java developer';

-- 31. Find employees earning exactly the same salary as 95000.
	select * from employee where salary = 95000;

-- 32. Find employees earning more than 100000.
	select * from employee where salary > 100000;
	
-- 33. Find employees whose department ID is greater than 102.
	select * from employee where department_id > 102;
    
-- 34. Find employees whose hire date is on or after 1 January 2021.
	select * from employee where hire_date >= '2021-01-01';
-- 35. Find employees whose salary is different from their manager's salary? 
	select * from employee where job_role not like  '%manager%';
-- (Conceptual challenge: identify why a direct comparison is not possible with a simple row filter.)