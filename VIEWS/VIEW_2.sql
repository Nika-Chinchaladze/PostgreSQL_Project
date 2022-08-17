-- Create view that should return student names, the courses the students is taking 
-- and the professors that teach that course

CREATE VIEW v_Student_Info
AS
SELECT
	s.student_name,
	c.course_title,
	t.last_name
FROM students s
	INNER JOIN student_enrollment e ON e.student_no = s.student_no
	INNER JOIN courses c ON c.course_no = e.course_no
	INNER JOIN teach t ON t.course_no = c.course_no
ORDER BY s.student_name ASC;

