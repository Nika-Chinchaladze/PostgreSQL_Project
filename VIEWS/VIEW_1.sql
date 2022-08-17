-- Create view, that return employee's along with department, division, region, country and salary 

CREATE VIEW v_Emp_Info
AS
SELECT
	e.first_name,
	e.department,
	d.division,
	r.region,
	r.country,
	e.salary
FROM employees e
	INNER JOIN departments d ON d.department = e.department
	INNER JOIN regions r ON r.region_id = e.region_id
ORDER BY r.region ASC,
		 r.country ASC,
		 e.salary ASC;