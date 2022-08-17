-- Query should return departments, that exist only in employees table and not exist in departments table

SELECT
	DISTINCT
	department
FROM employees
EXCEPT
SELECT
	department
FROM departments
ORDER BY department DESC;