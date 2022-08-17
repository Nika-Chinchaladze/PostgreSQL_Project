-- Query should return all of those employees that work in the electronics division

SELECT
	first_name ||' '|| last_name AS FullName,
	department
FROM employees
WHERE department IN (
					SELECT
						department
					FROM departments
					WHERE division = 'Electronics'
					)
ORDER BY department ASC;