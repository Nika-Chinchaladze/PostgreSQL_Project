-- Query should return students who take at most 2 courses.
-- Query should exclude students that don't take any courses as well as those
-- that take more than 2 course

SELECT
	e.student_no,
	s.student_name,
	COUNT(e.course_no) AS taken_quantity
FROM student_enrollment e
	INNER JOIN students s ON s.student_no = e.student_no
GROUP BY e.student_no, s.student_name
HAVING COUNT(e.course_no) IN (1, 2)
ORDER BY taken_quantity ASC;



