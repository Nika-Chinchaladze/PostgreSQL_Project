-- Query should return the student that is the oldest.
-- You are not allowed to use LIMIT or the ORDER BY clause to solve this problem

SELECT
	student_name,
	age
FROM students
WHERE age IN (
			  SELECT 
				  MAX(age) 
			  FROM students
			 );