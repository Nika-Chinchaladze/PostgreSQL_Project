-- Create view that should return all of the students as well as any courses they may or may not be taking

CREATE VIEW v_student_chosen
AS
SELECT
	s.student_name,
	e.course_no
FROM students s
	LEFT JOIN student_enrollment e ON e.student_no = s.student_no
ORDER BY s.student_name ASC;