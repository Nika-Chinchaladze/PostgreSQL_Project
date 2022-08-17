-- Create Multicolumn Index on employees Table

CREATE INDEX ind_fast_lastname
ON employees
(
	last_name,
	first_name
);



