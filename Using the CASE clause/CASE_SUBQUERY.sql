-- Query should return total counts of all the executives and all the peaople who are paid well and under paid


SELECT 
	s.Category,
	COUNT(*) AS Quantity
FROM
(
	SELECT
		first_name,
		salary,
		CASE
			WHEN salary <= 100000 THEN 'UNDER PAID'
			WHEN salary > 100000 AND salary <= 160000 THEN 'PAID WELL'
			WHEN salary > 160000 THEN 'EXECUTIVE'
			ELSE 'UNPAID'
		END AS Category
	FROM employees
) AS s
GROUP BY s.Category
ORDER BY Quantity ASC;