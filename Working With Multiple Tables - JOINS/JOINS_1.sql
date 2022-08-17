-- Query should return employees and countries, where they work

SELECT
	e.first_name ||' '|| e.last_name,
	r.country
FROM employees AS e, regions AS r
WHERE e.region_id = r.region_id
ORDER BY r.country ASC;