-- Query should return the names of those students thar are
-- between the ages of 18 and 20

SELECT
	student_name,
	age
FROM students
WHERE age BETWEEN 18 AND 20
ORDER BY age ASC,
	   	 student_name ASC;