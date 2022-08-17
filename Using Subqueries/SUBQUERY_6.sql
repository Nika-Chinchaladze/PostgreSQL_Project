-- Query should return the names of those students that are taking the course 
-- Physics and US History

SELECT
	student_name
FROM students
WHERE student_no IN (
					SELECT 
						student_no 
					FROM student_enrollment
					WHERE course_no IN (
										SELECT 
											course_no
										FROM courses
										WHERE course_title IN ('Physics', 'US History')
										)
					)
ORDER BY student_name ASC;