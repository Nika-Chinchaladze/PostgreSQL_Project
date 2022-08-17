-- Query should return difference between salary and average salary for each employee

WITH CHINCHO AS
(
SELECT
	first_name ||' '|| last_name AS FullName,
	salary,
	(SELECT ROUND(AVG(salary), 2) FROM employees) AS Avg_salary
FROM employees
)
SELECT
	*,
	salary - Avg_salary AS Difference
FROM CHINCHO
ORDER BY salary DESC;