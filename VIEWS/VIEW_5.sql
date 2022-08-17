-- Create view that should return every possible variant for students and courses, that they may undergo

CREATE VIEW v_student_courses
AS
SELECT
	s.student_name,
	c.course_title
FROM students s
	CROSS JOIN courses c
ORDER BY s.student_name ASC,
	     c.course_title ASC;
