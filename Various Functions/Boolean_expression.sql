SELECT
	first_name ||' '|| last_name AS FullName,
	salary,
	(salary > 100000) AS Boolean_Expresion
FROM employees
ORDER BY Boolean_Expresion DESC;