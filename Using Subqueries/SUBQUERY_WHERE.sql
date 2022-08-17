-- Query should return employees, who work in departments which are not in the departments table

SELECT
	first_name ||' '|| last_name AS FullName,
	department
FROM employees
WHERE department NOT IN (SELECT department FROM departments);