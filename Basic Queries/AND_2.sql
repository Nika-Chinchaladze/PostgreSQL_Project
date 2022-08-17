-- Query should return first_name and email of females that work in the
-- tools department and having a salary greater than 110 000

SELECT
	first_name,
	email,
	department,
	salary,
	gender
FROM employees
WHERE department = 'Tools' 
	  AND salary > 110000 
	  AND gender = 'F'
ORDER BY salary ASC;