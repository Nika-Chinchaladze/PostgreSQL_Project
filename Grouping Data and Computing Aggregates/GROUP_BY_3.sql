-- Query should return Unique departments from employees table

SELECT
	department
FROM employees
GROUP BY department
ORDER BY department ASC;