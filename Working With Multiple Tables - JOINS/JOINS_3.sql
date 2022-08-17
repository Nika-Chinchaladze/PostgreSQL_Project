-- Query should return the country with total number of employees asigned to that country
SELECT
	r.country,
	COUNT(e.employee_id) AS Emp_Quantity
FROM employees e, regions r
WHERE e.region_id = r.region_id
GROUP BY r.country;