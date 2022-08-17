-- CREATE INDEX THAT INCLUDES ONLY Supplies less than 1000

CREATE INDEX ind_LowSupply
ON fruit_imports
(
	supply
)
WHERE supply < 1000;


