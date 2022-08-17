-- Query should return list of first 10 Unique departments

SELECT DISTINCT
	department
FROM employees
ORDER BY department ASC
LIMIT 10;