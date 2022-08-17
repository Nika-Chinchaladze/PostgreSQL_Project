-- Query shoudl return names of departments, that have more than 38 employees working

SELECT
	d.department
FROM departments AS d
WHERE 38 < (
			SELECT
				COUNT(e.employee_id)
			FROM employees AS e
			WHERE e.department = d.department
			);