-- Exctract employees who does not have email addresses

WITH CHINCHO AS
(
SELECT
	first_name ||' '|| last_name AS FullName,
	COALESCE(email, 'Does not have email') AS "email address"
FROM employees
)
SELECT 
	 FullName
FROM CHINCHO
WHERE "email address" = 'Does not have email';
