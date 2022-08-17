-- Query should return - RUNNING TOTAL OF SALARIES - through each department
-- take into account -> hire_dates in ascending manner

SELECT
	first_name,
	department,
	hire_date,
	salary,
	SUM(salary) OVER(PARTITION BY department ORDER BY hire_date ASC) AS dept_running_total
FROM employees;