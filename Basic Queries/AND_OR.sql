-- Query should return employees, who has salary less than 40000 and
-- work in clothing department or in pharmacy department

SELECT
	first_name,
	last_name,
	department,
	salary
FROM employees
WHERE salary < 40000 AND (department = 'Clothing' OR department = 'Pharmacy')
ORDER BY department ASC, salary DESC;