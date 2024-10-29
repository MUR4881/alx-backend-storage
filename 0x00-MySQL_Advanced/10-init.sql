-- Initial
DROP TABLE IF EXISTS numbers;

CREATE TABLE numbers (
	a int default 0,
	b int default 0
);

INSERT INTO numbers VALUES (10, 2), (4, 5), (2, 3), (6, 3), (7, 0), (6, 8);
