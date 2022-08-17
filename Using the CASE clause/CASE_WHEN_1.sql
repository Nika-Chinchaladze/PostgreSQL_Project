-- Query should return degree of payment based on salary

SELECT
	first_name ||' '|| last_name AS FullName,
	salary,
	CASE
		WHEN salary > 100000 THEN 'High Paid'
		WHEN salary BETWEEN 60000 AND 100000 THEN 'Medium Paid'
		ELSE 'Low Paid'
	END AS "Paid Degree"
FROM employees;