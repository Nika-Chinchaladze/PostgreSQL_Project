-- Query should return all those employees that are in the 8-th position through their departments with their salary

SELECT * FROM
(
SELECT
	first_name,
	department,
	salary,
	RANK() OVER(PARTITION BY department ORDER BY salary) AS Emp_Rank
FROM employees
) a
WHERE a.Emp_Rank = 8;