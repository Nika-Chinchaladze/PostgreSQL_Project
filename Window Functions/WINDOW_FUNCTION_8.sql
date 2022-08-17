-- Query should return highest salaries through each department

SELECT * FROM
(
SELECT DISTINCT
	department,
	FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS Highest_Dept_Salary
FROM employees
) a;