-- Query should return employees along with email address, division and countries, where they work
SELECT
	e.first_name ||' '|| e.last_name AS FullName,
	e.email,
	d.division,
	r.country
FROM employees e, departments d, regions r
WHERE e.department = d.department
	  AND e.region_id = r.region_id
	  AND email IS NOT NULL;