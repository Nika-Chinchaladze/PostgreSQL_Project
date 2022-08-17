-- Query should return the most expensive cost_per_unit of every season. 
-- The query should display 2 columns, the season and cost_per_unit

SELECT 
	season,
	MAX(cost_per_unit) AS Max_cost_per_unit
FROM fruit_imports
WHERE season != 'All Year'
GROUP BY season
ORDER BY Max_cost_per_unit DESC;