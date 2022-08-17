-- Query shoudl return employees with thier salary and average departmental salary

SELECT
	first_name,
	salary,
	department,
			(
			SELECT
				ROUND(AVG(salary))
			FROM employees AS m
			WHERE e.department = m.department
			) AS Departmental_Avg_Salary
FROM employees AS e
ORDER BY department ASC;