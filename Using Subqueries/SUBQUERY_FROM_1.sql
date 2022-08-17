-- Query should return highest salary from those salaries that appear most frequently

SELECT 
	salary ||' $' AS Salary
FROM
(
	SELECT
		salary,
		COUNT(employee_id) AS Occurense_Number
	FROM employees
	GROUP BY salary
	HAVING COUNT(employee_id) > 1
	ORDER BY salary DESC
	FETCH FIRST 1 ROWS ONLY
) AS Filtered_Data