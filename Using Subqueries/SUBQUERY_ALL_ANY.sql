-- Query should return all of those employees that work in the Kids division and
-- the dates at which those employees were hired is greater than all of the hire_dates of employees
-- who work in the Maintenance department

SELECT 
	first_name ||' '||last_name AS FullName,
	department,
	hire_date
FROM employees
WHERE department = ANY (
					SELECT
						department
					FROM departments
					WHERE division = 'Kids'
					)
	 AND hire_date > ALL (
						 SELECT
							 hire_date
						 FROM employees
						 WHERE department = 'Maintenance'
						 )
ORDER BY department ASC,
	     hire_date ASC;