-- Use View v_student_teachers;
-- Let's say that we only care to see a single professor teaching a course and we don't
-- care for all the other professors that teach the particular course.
-- Write a query that will accomplish this so that every recond is distinct

WITH CHINCHO AS
(
select 
	student_name,
	MIN(course_no) AS mini
from v_student_teachers
GROUP BY student_name
),
LAZVI AS
(
select 
	last_name,
	MIN(course_no) AS minimum
from v_student_teachers v1
WHERE LENGTH(last_name) IN (
							  SELECT 
								  MIN(LENGTH(v2.last_name)) 
							  FROM v_student_teachers v2
							  WHERE v2.course_no = v1.course_no
						   )
GROUP BY last_name
)
SELECT 
	c.student_name,
	c.mini,
	l.last_name
FROM CHINCHO AS c
	INNER JOIN LAZVI AS l ON l.minimum = c.mini;

