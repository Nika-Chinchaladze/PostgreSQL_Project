-- Query should return employees through countries and regions

SELECT 
	first_name,
	CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END AS region_1,
	CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END AS region_2,
	CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END AS region_3,
	CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END AS region_4,
	CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END AS region_5,
	CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END AS region_6,
	CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END AS region_7
FROM employees;