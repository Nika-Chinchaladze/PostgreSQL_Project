-- Query should return the sum of salaries of employees through 90 days range(window)

SELECT
	hire_date,
	salary,
	(
	SELECT
		SUM(salary)
	FROM employees m
	WHERE m.hire_date BETWEEN e.hire_date -90 and e.hire_date
	) AS spending_pattern
FROM employees e