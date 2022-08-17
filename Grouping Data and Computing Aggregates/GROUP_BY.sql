-- Query should return total salaries of employees through each department

SELECT
	department,
	SUM(salary) AS Salary_Quantity
FROM employees
GROUP BY department
ORDER BY Salary_Quantity ASC;

