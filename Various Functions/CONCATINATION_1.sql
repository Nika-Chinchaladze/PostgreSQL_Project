-- ADD word department to all departments

SELECT
	department,
	department ||' '|| 'department' AS "Modified Data"
FROM departments;