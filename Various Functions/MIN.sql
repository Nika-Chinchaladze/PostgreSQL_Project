-- Query should return hire date of professors that has 
-- been teaching the longest

SELECT
	MIN(hire_date) AS "Hire Date of first professor"
FROM professors;