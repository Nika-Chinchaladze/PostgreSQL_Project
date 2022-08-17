-- Query should return employee's salary along with following - CLOSEST bigger salary through each department

SELECT
	first_name ||' '|| last_name AS FullName,
	department,
	salary,
	LEAD(salary) OVER(PARTITION BY department ORDER BY salary)
FROM employees;