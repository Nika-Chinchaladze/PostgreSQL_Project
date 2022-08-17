-- Query should return employees along with division and country.
-- Only those employees, who don't have email

SELECT
	e.first_name ||' '|| e.last_name AS FullName,
	COALESCE(e.email, 'Not') AS Mail,
	d.division,
	r.country
FROM employees e
	INNER JOIN departments d ON d.department = e.department
	INNER JOIN regions r ON r.region_id = e.region_id
WHERE e.email IS NULL;