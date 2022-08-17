-- Query should return the most expensive state with the total cost
-- take into considertion the supply and cost_per_unit columns for 
-- determining the total cost

SELECT
	state,
	SUM(supply * cost_per_unit) AS Amounts
FROM fruit_imports
GROUP BY state
ORDER BY Amounts DESC
FETCH FIRST 1 ROWS ONLY;