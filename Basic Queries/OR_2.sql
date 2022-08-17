-- Query should return first_name and hire_date of those employees who earn more than 165,000
-- as well as those employees that work in the sports department and also happen to be men

SELECT
	first_name,
	hire_date,
	salary,
	department,
	gender
FROM employees
WHERE salary > 165000
	  OR (department = 'Sports'AND gender = 'M')
ORDER BY gender ASC, 
         salary ASC;