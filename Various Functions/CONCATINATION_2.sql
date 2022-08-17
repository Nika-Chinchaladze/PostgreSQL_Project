-- Query should return result: "Chon works in the Science department"

SELECT 
	last_name || ' works in the ' || department ||' department' AS "Modified Answer"
FROM professors
WHERE last_name = 'Chong';