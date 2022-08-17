SELECT DISTINCT
	department,
	(department LIKE '%th%') AS Boolean_Expression
FROM employees
WHERE (department LIKE '%th%') = 'true';