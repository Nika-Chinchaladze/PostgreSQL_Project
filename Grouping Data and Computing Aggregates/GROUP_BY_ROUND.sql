-- Query should return min, max and averages salaries through gender and region

SELECT
	gender,
	region_id,
	MIN(salary) AS Min_Salary,
	MAX(salary) AS Max_Salary,
	ROUND(AVG(salary), 2) AS Avg_Salary
FROM employees
GROUP BY gender, region_id
ORDER BY gender ASC,
		 region_id ASC;