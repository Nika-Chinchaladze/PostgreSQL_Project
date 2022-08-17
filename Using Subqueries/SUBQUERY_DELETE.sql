-- Query should return Unique Names along with id

DELETE FROM dupes
WHERE id NOT IN (
			SELECT 
					MIN(id) 
			FROM dupes
			GROUP BY name
			);
			
SELECT * FROM dupes;
