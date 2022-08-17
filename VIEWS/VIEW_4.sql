-- Create View that should return employees whose salary is above average for their given department

CREATE VIEW v_above_average_emp
AS
SELECT
	e.first_name,
	e.salary
FROM employees e
	INNER JOIN departments d ON d.department = e.department
WHERE e.salary > (
					SELECT
						ROUND(AVG(salary))
					FROM employees e1
					WHERE e1.department = e.department
				 );