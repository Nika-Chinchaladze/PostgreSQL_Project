-- Query should return results from multiple tables, user should have possibility to
-- see first 3 rows from employees, professors and student tables

SELECT * FROM
(
	SELECT
		e.first_name ||' '|| e.last_name AS FullName,
		e.department,
		e.salary,
		e.hire_date,
		'employees' AS Name
	FROM employees e
	LIMIT 3
) b
UNION ALL
SELECT * FROM
(
	SELECT
		p.last_name,
		p.department,
		p.salary,
		p.hire_date,
		'professors' AS Name
	FROM professors p
	LIMIT 3
) c
UNION ALL
SELECT 
	student_name,
	course_title,
	pocket_money,
	CAST(birth_year || '-05-31' AS DATE) AS birth_date,
	'students' AS Name
FROM
(
	SELECT
		s.student_name,
		c.course_title,
		CAST('1500' AS INTEGER) AS pocket_money,
		CAST(2022 - s.age AS VARCHAR) AS birth_year
	FROM students s
		INNER JOIN student_enrollment e ON s.student_no = e.student_no
		INNER JOIN courses c ON c.course_no = e.course_no
	ORDER BY s.student_name ASC
	LIMIT 3
) a;