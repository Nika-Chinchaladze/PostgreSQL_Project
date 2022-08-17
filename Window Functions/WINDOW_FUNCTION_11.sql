-- Query should return employee's salary along with previous - CLOSEST smaller salary through each department

SELECT
	first_name ||' '|| last_name AS FullName,
	department,
	salary,
	LAG(salary) OVER(PARTITION BY department ORDER BY salary) AS previous_sal
FROM employees;