-- Query should return domain name and number of employees, who are
-- using these domains

WITH CHINCHO AS
(
SELECT
	SUBSTRING(email, POSITION('@' IN email)+1) AS Domain_Name,
	employee_id
FROM employees
)
SELECT 
	COALESCE(Domain_Name, 'Without Email') AS "Domain Name",
	COUNT(employee_id) AS Quantity
FROM CHINCHO
GROUP BY Domain_Name
ORDER BY Quantity DESC;