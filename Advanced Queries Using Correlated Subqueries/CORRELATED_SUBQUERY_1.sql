-- Query shoudl return employees who make salary more than their departmental avg salary

SELECT
	first_name,
	salary
FROM employees AS e
WHERE salary > (
				SELECT
					ROUND(AVG(salary))
				FROM employees AS m
				WHERE e.department = m.department
				);