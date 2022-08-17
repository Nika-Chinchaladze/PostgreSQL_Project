-- Query should return - RUNNING TOTAL OF FOUR FOLLOWING SALARIES - through each department
-- take into account -> hire_dates in ascending manner

SELECT
	first_name,
	department,
	hire_date,
	salary,
	SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS dept_running_total
FROM employees;