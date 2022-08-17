-- Query should return SECOND highest salaries through each department

SELECT * FROM
(
SELECT DISTINCT
	department,
	NTH_VALUE(salary, 2) OVER(PARTITION BY department ORDER BY salary DESC) AS second_highest
FROM employees
) a
WHERE second_highest IS NOT NULL
ORDER BY department ASC;