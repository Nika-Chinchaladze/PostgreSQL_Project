-- Query should return the names and ages of the top 4 oldest students

SELECT
	student_name,
	age
FROM students
ORDER BY age DESC
FETCH FIRST 4 ROWS ONLY;