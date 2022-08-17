-- Query should return only the state with the largest amount of fruit supply

SELECT
	state,
	SUM(supply) AS Amounts
FROM fruit_imports
GROUP BY state
ORDER BY Amounts DESC
LIMIT 1;