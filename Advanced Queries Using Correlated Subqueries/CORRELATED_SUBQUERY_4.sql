-- Query shoudl return names of departments, that have more than 38 employees working

WITH CHINCHO AS
(
SELECT
	e.department,
	(
	SELECT
		COUNT(m.employee_id) 
	FROM employees AS m
	WHERE e.department = m.department
	) AS Emp_Number
FROM employees AS e
)
SELECT DISTINCT
	department,
	Emp_Number
FROM CHINCHO
WHERE Emp_Number > 38
ORDER BY Emp_Number DESC;
