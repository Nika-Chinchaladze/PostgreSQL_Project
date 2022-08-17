WITH CHINCHO AS
(
SELECT DISTINCT
	department,
	('Sports' IN (department)) AS Boolean_Expression
FROM employees
)
SELECT * FROM CHINCHO
WHERE Boolean_Expression = 'false'
ORDER BY department ASC;
