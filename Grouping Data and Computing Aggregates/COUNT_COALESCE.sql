-- Query should return result, where count = 4, but using COUNT(*) is forbidden

SELECT
	COUNT(COALESCE(fruit_name, 'peacky blinders')) AS Quantity
FROM fruits;