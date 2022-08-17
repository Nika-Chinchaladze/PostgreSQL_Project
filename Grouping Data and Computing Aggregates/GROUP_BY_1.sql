-- Query should extract information about department's min, max, avg and total salaries, Also quantity of employees.
-- there should be employees, who has salary more than 90000

SELECT
	department,
	MIN(salary) AS Min_Salary,
	MAX(salary) AS Max_Salary,
	ROUND(AVG(salary), 2) AS Avg_Salary,
	SUM(salary) AS Total_Salary,
	COUNT(employee_id) AS Employee_Quantity
FROM employees
WHERE salary > 90000
GROUP BY department
ORDER BY Employee_Quantity ASC;