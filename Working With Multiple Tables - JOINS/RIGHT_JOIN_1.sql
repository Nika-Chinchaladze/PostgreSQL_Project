-- Query should return every departments from employees, that don't exist in departments table

SELECT DISTINCT
	e.department AS From_Employees,
	d.department AS From_Departments
FROM departments d
	RIGHT JOIN employees e ON e.department = d.department
WHERE d.department IS NULL;