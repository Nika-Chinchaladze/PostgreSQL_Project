-- Query should return first names and hire dates of those employees who were hired
-- during jan 1-st 2002 and jan 1-st 2004

SELECT
	first_name,
	hire_date
FROM employees
WHERE hire_date BETWEEN '2002-01-01' AND '2004-01-01'
ORDER BY hire_date ASC;
