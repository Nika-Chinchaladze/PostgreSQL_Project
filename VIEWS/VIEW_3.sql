-- Create view that should return student names, the courses the students is taking 
-- and the professors that teach that course

CREATE VIEW v_student_teachers
AS
SELECT
	s.student_name,
	e.course_no,
	p.last_name
FROM students s
	INNER JOIN student_enrollment e ON e.student_no = s.student_no
	INNER JOIN teach t ON t.course_no = e.course_no
	INNER JOIN professors p ON p.last_name = t.last_name
ORDER BY s.student_name ASC;

