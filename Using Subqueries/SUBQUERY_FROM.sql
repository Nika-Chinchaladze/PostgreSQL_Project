-- Query should return fullname of employees with salaries
-- salaries should be more than 150,000

SELECT
	Qd.FullName,
	Qd.salary
FROM 
(
	SELECT 
		first_name ||' '|| last_name AS FullName,
		department,
		salary
	FROM employees
	WHERE salary > 150000
) AS Qd;