-- Query should return total counts of all the executives and all the peaople who are paid well and under paid

SELECT 
	COUNT(a.UNDER_PAID) AS "UNDER PAID",
	COUNT(a.PAID_WELL) AS "PAID WELL",
	COUNT(a.EXECUTIVE) AS "EXECUTIVE"
FROM
(
SELECT
	CASE WHEN salary < 100000 THEN 'a' END AS UNDER_PAID,
	CASE WHEN salary BETWEEN 100000 AND 160000 THEN 'b' END AS PAID_WELL,
	CASE WHEN salary > 160000 THEN 'c' END AS EXECUTIVE
FROM employees
) AS a;


