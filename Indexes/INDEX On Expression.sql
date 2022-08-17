-- CREATE INDEX On Expression
CREATE INDEX ind_dupes
ON dupes
(
	UPPER(name)
);