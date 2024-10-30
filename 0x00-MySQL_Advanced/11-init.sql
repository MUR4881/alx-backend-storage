-- DROP TABLE IF EXISTS students;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
	name VARCHAR(255) NOT NULL,
	score INT default 0,
	last_meeting DATE NULL
);

INSERT INTO students (name, score) VALUES ("Bob", 80), ("Sylvia", 120), ("Jean", 60),
					("Steeve", 50), ("Camilia", 80), ("Alexa", 130);
