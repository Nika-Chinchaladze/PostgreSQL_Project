-- Query should return 3 columns. The query should display the fruit and it's total
-- supply along with a category of either LOW, ENOUGH or FULL. Low category means that
-- the total supply of the fruit is less than 20,000. The enough category means that
-- the total supply is between 20,000 and 50,000. If the total supply is greater than
-- 50,000 then that fruit falls in the FULL category.

SELECT 
	a.name,
	a.Total_supply,
	CASE
		WHEN a.Total_supply < 20000 THEN 'LOW'
		WHEN a.Total_supply BETWEEN 20000 AND 50000 THEN 'ENOUGH'
		WHEN a.Total_supply > 50000 THEN 'FULL'
		ELSE 'WITHOUT CATEGORY'
	END AS Category
FROM
(
SELECT
	name,
	SUM(supply) AS Total_supply
FROM fruit_imports
GROUP BY name
) a;

