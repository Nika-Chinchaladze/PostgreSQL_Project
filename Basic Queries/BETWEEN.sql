-- Query should return employees, who has salary equal to or more than 80000 and equal to or less than 100000:

SELECT
	first_name,
	last_name,
	salary
FROM employees
WHERE salary BETWEEN 80000 AND 100000;