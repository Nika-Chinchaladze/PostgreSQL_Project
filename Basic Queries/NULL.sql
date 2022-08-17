-- Query should return employees, who don't have emails

SELECT
	first_name,
	last_name,
	email
FROM employees
WHERE email IS NULL;