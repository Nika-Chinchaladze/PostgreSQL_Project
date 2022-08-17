-- Query should return countries, departments and divisions as one column

SELECT 
	DISTINCT
	department AS Names
FROM employees
UNION ALL
SELECT 
	DISTINCT
	division
FROM departments
UNION ALL
SELECT 
	DISTINCT
	country
FROM regions;