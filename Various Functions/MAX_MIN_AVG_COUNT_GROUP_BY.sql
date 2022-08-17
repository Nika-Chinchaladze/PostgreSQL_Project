-- Query should return max, min and average salary of those employees, who has a email
-- through each department

SELECT
	department,
	MAX(salary) ||' '|| '$' AS "Max Salary",
	MIN(salary) ||' '|| '$' AS "Min Salary",
	ROUND(AVG(salary), 2) ||' '|| '$' AS "AVG Salary",
	SUM(salary) ||' '|| '$' AS "Total Salary",
	COUNT(employee_id) ||' '|| 'employees' AS "Number of employees"
FROM employees
WHERE email IS NOT NULL
GROUP BY department
ORDER BY department ASC;