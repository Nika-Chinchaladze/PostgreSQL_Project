-- Query should return employees, who work in Sports, First Aid, Toys and Garden departments;

SELECT
	first_name,
	last_name,
	department
FROM employees
WHERE department IN ('Sports', 'First Aid', 'Toys', 'Garden')
ORDER BY department ASC;