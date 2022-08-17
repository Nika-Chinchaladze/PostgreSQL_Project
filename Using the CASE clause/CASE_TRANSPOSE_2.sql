-- Query should return total counts of all the executives and all the peaople who are paid well and under paid

SELECT
	SUM(CASE WHEN salary < 100000 THEN 1 ELSE 0 END) AS "UNDER_PAID",
	SUM(CASE WHEN salary BETWEEN 100000 AND 160000 THEN 1 ELSE 0 END) AS "PAID_WELL",
	SUM(CASE WHEN salary > 160000 THEN 1 ELSE 0 END) AS "EXECUTIVE"
FROM employees;


