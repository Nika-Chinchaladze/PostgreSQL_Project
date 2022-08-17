-- Query should return the seasons that produce either 3 fruits or 4 fruits

SELECT
	season,
	COUNT(name) AS Quantity
FROM fruit_imports
GROUP BY season
HAVING COUNT(name) IN (3, 4)
ORDER BY Quantity ASC;