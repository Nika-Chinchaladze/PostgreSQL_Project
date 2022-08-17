-- Query should return departments along with highest paid employee's salaries through each department
-- There should be only those departments, that have more than 45 employees

SELECT
	d.department,
	(
		SELECT
			MAX(salary)
		FROM employees AS e
		WHERE e.department = d.department
	) AS Highest_paid_salary
FROM departments AS d
WHERE 45 < (
			SELECT
				COUNT(m.employee_id)
			FROM employees AS m
			WHERE m.department = d.department
			);