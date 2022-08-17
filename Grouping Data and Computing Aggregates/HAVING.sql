-- Query should return department, where employees quantity is greater than 35

SELECT
	department,
	COUNT(employee_id) AS Quantity
FROM employees
GROUP BY department
HAVING COUNT(employee_id) > 35
ORDER BY Quantity ASC;