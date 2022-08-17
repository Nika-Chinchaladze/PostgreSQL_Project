-- Query should return everything from professors table, but department names should
-- be shortened to only first three letter in upper case mode

SELECT
	last_name,
	UPPER(SUBSTRING(department, 1, 3)) AS "Modified Department",
	salary,
	hire_date
FROM professors;