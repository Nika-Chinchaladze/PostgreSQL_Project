-- Query should return employees who where hired first and last through all departments,
-- query also should include columns like: country and hire_date itself
SELECT * FROM
(
SELECT
	e.first_name,
	e.department,
	e.hire_date,
	r.country
FROM employees e
	INNER JOIN regions r ON r.region_id = e.region_id
WHERE e.hire_date IN (SELECT MIN(hire_date) FROM employees)
FETCH FIRST 1 ROWS ONLY
) a

UNION
SELECT
	e.first_name,
	e.department,
	e.hire_date,
	r.country
FROM employees e
	INNER JOIN regions r ON r.region_id = e.region_id
WHERE e.hire_date IN (SELECT MAX(hire_date) FROM employees);