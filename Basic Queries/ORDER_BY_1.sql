-- Query should return names of students sorted by their age from largest to smallest

SELECT
	student_name,
	age
FROM students
ORDER BY age DESC;