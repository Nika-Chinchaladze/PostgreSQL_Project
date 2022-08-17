-- Query should return students who don't take CS180

SELECT 
	DISTINCT student_name 
FROM students
WHERE student_no IN (
					SELECT
						student_no
					FROM student_enrollment
					WHERE course_no != 'CS180'
					);
