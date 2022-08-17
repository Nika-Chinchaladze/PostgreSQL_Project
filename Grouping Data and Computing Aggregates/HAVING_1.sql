-- How many employee have the same first_name in the company?
-- Query should return name and quantity

SELECT
	first_name,
	COUNT(employee_id) AS Quantity
FROM employees
GROUP BY first_name
HAVING COUNT(employee_id) > 1
ORDER BY Quantity DESC;