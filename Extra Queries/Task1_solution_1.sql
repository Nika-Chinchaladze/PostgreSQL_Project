-- Query should return students who don't take CS180

SELECT student_name FROM students
EXCEPT
SELECT
	s.student_name
FROM students s
	LEFT JOIN student_enrollment e ON e.student_no = s.student_no
WHERE e.course_no = 'CS180';
