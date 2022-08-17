SELECT
	first_name ||' '|| last_name AS FullName,
	email,
	SUBSTRING(email, 1, POSITION('@' IN email)-1) as "First part of email",
	SUBSTRING(email, POSITION('@' IN email), LENGTH(email) - POSITION('@' IN email)) AS "Second part of email"
FROM employees
WHERE email LIKE '%@%';