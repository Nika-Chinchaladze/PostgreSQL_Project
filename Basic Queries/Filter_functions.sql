-- Query should return the male employees who work in th automotive
-- department and earn more than 40,000 and less tahn 100,000 as well
-- as females that work in the toys department

SELECT
	first_name,
	department,
	salary,
	gender
FROM employees
WHERE (
	  gender = 'M'
	  AND department = 'Automotive'
	  AND salary > 40000 
	  AND salary < 100000
	  )
	  OR
	  (
	  gender = 'F'
	  AND department = 'Toys'
	  )
ORDER BY gender ASC,
		 salary ASC;