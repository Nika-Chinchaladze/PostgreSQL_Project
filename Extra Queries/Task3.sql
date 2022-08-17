-- Query should return students who take CS220 and no other courses

SELECT 
	s.student_no,
	s.student_name,
	e.course_no
FROM students s
	INNER JOIN student_enrollment e ON e.student_no = s.student_no
WHERE s.student_no IN (
						SELECT
							student_no
						FROM student_enrollment
						GROUP BY student_no
						HAVING COUNT(course_no) = 1
					  )
	 AND e.course_no = 'CS220';


