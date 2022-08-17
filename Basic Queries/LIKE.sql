-- Query should return all those students that contain the letter "ch"
-- in their name or their name ends with the letter "nd"

SELECT
	student_name
FROM students
WHERE student_name LIKE '%ch%'
	  OR student_name LIKE '%nd'
ORDER BY student_name ASC;