-- Query should return students who are older than at most two other students
SELECT 
	DISTINCT
	student_name,
	age
FROM
(
SELECT
	student_name,
	age,
	RANK() OVER(ORDER BY age ASC) AS Ordered
FROM students
) a
WHERE Ordered IN (1,2,3);