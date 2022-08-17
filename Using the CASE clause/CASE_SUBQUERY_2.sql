-- Query should return employees through countries only

SELECT 
	COUNT(a.region_1) + COUNT(a.region_2) + COUNT(a.region_3) AS "United States",
	COUNT(a.region_4) + COUNT(a.region_5) AS "Asia",
	COUNT(a.region_6) + COUNT(a.region_7) AS "Canada"
FROM
(
SELECT 
	first_name,
	CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END AS region_1,
	CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END AS region_2,
	CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END AS region_3,
	CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END AS region_4,
	CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END AS region_5,
	CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END AS region_6,
	CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END AS region_7
FROM employees
) a;