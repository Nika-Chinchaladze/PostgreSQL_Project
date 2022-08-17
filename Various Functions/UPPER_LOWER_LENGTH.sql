SELECT
	first_name,
	LENGTH(first_name) AS "Length of first name",
	UPPER(department) AS "Upper Case department",
	LOWER(department) AS "Lower Case department"
FROM employees;