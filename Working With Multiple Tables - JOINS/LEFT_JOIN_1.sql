-- Query should return every departments from departments, that don't exist in employees table

SELECT DISTINCT
	d.department AS From_Departments,
	e.department AS From_Employees
FROM departments d
	LEFT JOIN employees e ON e.department = d.department
WHERE e.department IS NULL;