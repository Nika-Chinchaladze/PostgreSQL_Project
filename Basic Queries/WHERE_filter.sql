SELECT
	first_name,
	last_name,
	department,
	salary,
	region_id
FROM employees
WHERE department = 'Clothing' 
	  and salary > 10000
	  and region_id = 3;