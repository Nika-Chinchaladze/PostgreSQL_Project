-- Query should return Quantity of employees through each department without GROUP BY clause

SELECT DISTINCT
	d.department,
	COUNT(*) OVER(PARTITION BY d.department) AS Quantity
FROM employees e
	INNER JOIN departments d ON d.department = e.department
ORDER BY Quantity DESC;