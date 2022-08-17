-- Query should return sum of salaries - RUNNING TOTAL OF SALARIES - through hire_dates

SELECT
	first_name,
	hire_date,
	salary,
	SUM(salary) OVER(ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
FROM employees;