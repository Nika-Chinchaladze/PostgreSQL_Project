-- Query should return students who take CS110 or CS107 but not both

SELECT DISTINCT
	e.course_no,
	s.student_name
FROM students s
	INNER JOIN student_enrollment e ON e.student_no = s.student_no
WHERE e.course_no IN ('CS110', 'CS107')
AND s.student_no NOT IN (
						SELECT r.student_no
						FROM student_enrollment r
						WHERE s.student_no = r.student_no
							AND r.course_no = 'CS110' 
							AND r.course_no = 'CS107'
						);
