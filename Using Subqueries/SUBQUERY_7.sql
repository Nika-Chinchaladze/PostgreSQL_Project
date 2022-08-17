-- Query should return the names of the student that is taking the highest number of courses

SELECT
	student_name
FROM students
WHERE student_no IN (
					SELECT 
						student_no
					FROM student_enrollment
					GROUP BY student_no
					ORDER BY COUNT(course_no) DESC
					FETCH FIRST 1 ROWS ONLY
					);
