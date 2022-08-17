-- Query should return seasons with totals costs with TRANSPOSED manner

SELECT 
	SUM(CASE WHEN season = 'Winter' THEN total END) AS WINTER,
	SUM(CASE WHEN season = 'Summer' THEN total END) AS SUMMER,
	SUM(CASE WHEN season = 'All Year' THEN total END) AS ALL_YEAR,
	SUM(CASE WHEN season = 'Spring' THEN total END) AS SPRING,
	SUM(CASE WHEN season = 'Fall' THEN total END) AS FALL
FROM
(
SELECT
	season,
	SUM(supply * cost_per_unit) AS total
FROM fruit_imports
GROUP BY season
) a;
