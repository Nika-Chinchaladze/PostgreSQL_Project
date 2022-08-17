-- Query should return Number of employees in sports, tools, clothing and computers department

SELECT
	SUM(CASE WHEN department = 'Sports' THEN 1 ELSE 0 END) AS "SPORTS",
	SUM(CASE WHEN department = 'Tools' THEN 1 ELSE 0 END) AS "TOOLS",
	SUM(CASE WHEN department = 'Clothing' THEN 1 ELSE 0 END) AS "CLOTHING",
	SUM(CASE WHEN department = 'Computers' THEN 1 ELSE 0 END) AS "COMPUTERS"
FROM employees
WHERE department IN ('Sports', 'Tools', 'Clothing', 'Computers');