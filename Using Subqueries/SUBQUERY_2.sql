-- Query should return those employees that work in asia or canada and make more than 130,000 dollars

SELECT
	first_name ||' '|| last_name AS FullName,
	salary
FROM employees
WHERE salary > 130000
	  AND region_id IN (
		  				SELECT
		  					region_id
		  				FROM regions
		  				WHERE country IN ('Asia', 'Canada')
	  				   )
ORDER BY salary DESC;