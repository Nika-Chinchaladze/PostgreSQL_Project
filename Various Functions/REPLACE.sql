-- REPLACE 'Clothing' with something else

SELECT
	department,
	REPLACE(department, 'Clothing', 'Peacky Blinders') AS "Changed Data"
FROM departments
WHERE department LIKE '%Clothing%';