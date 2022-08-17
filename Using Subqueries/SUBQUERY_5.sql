-- Query should return average salary of employees, but you should
-- exclude min and max salary

SELECT
	ROUND(AVG(salary), 2) AS Average_Salary
FROM employees
WHERE salary NOT IN (
					(SELECT MAX(salary) FROM employees),
					(SELECT MIN(salary) FROM employees)
					);