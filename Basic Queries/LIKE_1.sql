-- Query should return the name of those students that have the
-- letter "ae" or "ph" in their name and are NOT 19 years old

SELECT
	student_name
FROM students
WHERE (
	  student_name LIKE '%ae%'
	  OR student_name LIKE '%ph%'
	  )
	  AND age != 19
ORDER BY student_name ASC;
