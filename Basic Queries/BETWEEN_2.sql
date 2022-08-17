-- Query should return students, who must not be older than age 20
-- if their student_no is either between 3 and 5 or their student_no is 7.
-- Query should also return students older than age 20 but in that case thay must have a student_no that
-- is at least 4

SELECT
	*
FROM students
WHERE (
	  age <= 20
	  AND (student_no BETWEEN 3 AND 5 OR student_no = 7)
	  )
	  OR
	  (
	  age > 20 AND student_no >= 4
	  )
ORDER BY age ASC;