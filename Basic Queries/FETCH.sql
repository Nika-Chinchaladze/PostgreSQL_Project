-- Query should return list of first 5 Unique departments

SELECT DISTINCT
	department
FROM employees
ORDER BY department ASC
FETCH FIRST 5 ROWS ONLY;