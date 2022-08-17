-- Query should return unique list of departments from employees and departments table in one column

SELECT
	department
FROM departments
UNION
SELECT
	department
FROM employees
ORDER BY department ASC;