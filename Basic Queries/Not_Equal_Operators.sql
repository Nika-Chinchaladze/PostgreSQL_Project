-- Query should return departments except - Sports, Automative and Beauty

SELECT
	first_name,
	last_name,
	department
FROM employees
WHERE NOT department = 'Sports'
	AND department != 'Automotive'
	AND department <> 'Beauty'
ORDER BY department ASC;