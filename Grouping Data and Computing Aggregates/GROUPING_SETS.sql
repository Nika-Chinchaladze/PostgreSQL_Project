-- Query should return SUM of unit_sold for continent, country and city with grand total in the end

SELECT
	continent,
	country,
	city,
	SUM(units_sold) AS Sum_Solds
FROM sales
GROUP BY GROUPING SETS(continent, country, city, ());