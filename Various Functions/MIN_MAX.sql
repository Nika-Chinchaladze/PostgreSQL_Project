-- Query should return the highest and lowest salary from the professors table
-- excluding the professor named 'Wilson'

SELECT
	MAX(salary) || ' $' AS "Highest Salary",
	MIN(salary) || ' $' AS "Lowest Salary"
FROM professors
WHERE last_name != 'Wilson';