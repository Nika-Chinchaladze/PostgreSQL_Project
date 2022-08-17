-- Query should return employees ranked with their salary in ascending way through each department

SELECT
	first_name,
	department,
	salary,
	RANK() OVER(PARTITION BY department ORDER BY salary) AS Emp_Rank
FROM employees;