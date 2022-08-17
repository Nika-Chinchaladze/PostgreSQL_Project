-- Query should return the state that has more than 1 import of the same fruit

SELECT
	state,
	name,
	COUNT(*) AS Quantity
FROM fruit_imports
GROUP BY state, name
HAVING COUNT(*) > 1
ORDER BY Quantity DESC;