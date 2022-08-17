-- along with department there should be total number of employees from that department
-- Also last row should contain information about total number of employees in all departments together

SELECT
	department,
	COUNT(*) AS Quantity_1
FROM employees
GROUP BY department
UNION
SELECT
	'TOTAL',
	COUNT(*) AS Quantity_2
FROM employees
ORDER BY Quantity_1 ASC;