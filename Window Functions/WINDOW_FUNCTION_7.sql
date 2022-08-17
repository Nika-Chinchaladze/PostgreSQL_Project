-- Split each departments into 5 backets and return salaries in descending way
-- Number 1 should be related to highest paid employees

SELECT * FROM
(
SELECT
	first_name,
	department,
	salary,
	NTILE(5) OVER(PARTITION BY department ORDER BY salary DESC) AS sal_bracket
FROM employees
) a;