-- Query shoudl return names of departments, that have more than 38 employees working

SELECT DISTINCT
	m.department
FROM employees AS m
WHERE 38 < (
			SELECT
				COUNT(e.employee_id)
			FROM employees AS e
			WHERE e.department = m.department
			);