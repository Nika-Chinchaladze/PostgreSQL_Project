-- Query should return highest salary from those salaries that appear most frequently


SELECT
	salary ||' $' AS Max_Frequent_Salary
FROM employees
GROUP BY salary
HAVING count(*) >= ALL(
					  SELECT count(*) 
					  FROM employees 
					  GROUP BY salary
					  )
ORDER BY salary DESC
LIMIT 1;
