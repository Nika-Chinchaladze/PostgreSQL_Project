-- Query should return first_name, department and salary, 
-- along with the how much less thay make than highest paid employee in the company
-- These employees should work in asia or canada

SELECT
	first_name,
	department,
	salary,
	(SELECT MAX(salary) FROM employees) - salary AS Difference
FROM employees
WHERE region_id IN (
					SELECT
						region_id
					FROM regions
					WHERE country IN ('Asia', 'Canada')
					)
ORDER BY Difference ASC;