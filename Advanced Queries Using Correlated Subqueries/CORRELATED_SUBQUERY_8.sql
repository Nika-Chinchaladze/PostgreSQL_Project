-- Query should return department along with employees who has minimum and maximum salary

SELECT 
	c.department,
	c.answer,
	c.SALARY,
	CASE WHEN salary = (SELECT MAX(salary) FROM employees z WHERE z.department = c.department)
	     THEN 'HIGHEST SALARY'
		 ELSE 'LOWEST SALARY'
		 END AS Category
FROM
(
SELECT 
	b.department,
	CASE WHEN salary = (SELECT MAX(salary) FROM employees y WHERE y.department = b.department)
		 THEN
			(
			 SELECT 
				l.first_name 
			 FROM employees l 
			 WHERE l.department = b.department
			 AND salary IN (SELECT MAX(salary) FROM employees k WHERE k.department = l.department)
			)
		 ELSE
		 	(
			 SELECT 
				l.first_name 
			 FROM employees l 
			 WHERE l.department = b.department
			 AND salary IN (SELECT MIN(salary) FROM employees k WHERE k.department = l.department)
			)
		 END AS answer,
	b.SALARY
FROM
(
SELECT 
	a.department,
	UNNEST(ARRAY[maximum, minimum]) AS SALARY
FROM
(
SELECT DISTINCT
	e.department,
	(
	SELECT
		MAX(m.salary)
	FROM employees as m
	WHERE m.department = e.department
	) as maximum,
	(
	SELECT
		MIN(m.salary)
	FROM employees as m
	WHERE m.department = e.department
	) as minimum
FROM employees AS e
) a
) b
) c
ORDER BY c.department ASC;