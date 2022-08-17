-- Query should return department along with employees who has minimum and maximum salary

SELECT 
	a.department,
	a.first_name,
	a.salary,
	CASE
		WHEN a.salary = MAXIMUM THEN 'HIGHEST SALARY'
		WHEN a.salary = MINIMUM THEN 'LOWEST SALARY'
	END AS Category
FROM
(
SELECT
	e.department,
	e.first_name,
	e.salary,
	(SELECT MAX(m.salary) FROM employees m WHERE m.department = e.department) AS MAXIMUM,
	(SELECT MIN(m.salary) FROM employees m WHERE m.department = e.department) AS MINIMUM
FROM employees e
) a
WHERE a.salary IN (MINIMUM, MAXIMUM)
ORDER BY a.department ASC;