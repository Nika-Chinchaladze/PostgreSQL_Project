-- Query should return highly paid professors [salary > 95000]

WITH CHINCHO AS
(
SELECT
	(salary > 95000) AS Boolean_Expression,
	last_name
FROM professors
)
SELECT
	'It is ' || Boolean_Expression || ' that professor ' || last_name || ' is highly paid' AS Answer
FROM CHINCHO;