-- Query should extract information about employees quantities in each department, through gender

SELECT
	department,
	gender,
	COUNT(employee_id) AS Employee_Quantity
FROM employees
GROUP BY department, gender
ORDER BY department ASC,
		 gender ASC;