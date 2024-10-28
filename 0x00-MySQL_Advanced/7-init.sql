-- Initial
DROP TABLE IF EXISTS corrections, users, projects;

CREATE TABLE users (
	id int not null auto_increment,
	name varchar(255) not null,
	average_score float default 0,
	PRIMARY KEY (id)
);

CREATE TABLE projects (
	id int not null auto_increment,
	name varchar(255) not null,
	PRIMARY KEY (id)
);

CREATE TABLE corrections (
	user_id int not null,
	project_id int not null,
	score int default 0,
	key `user_id` (`user_id`),
	key `project_id` (`project_id`),
	CONSTRAINT fk_user_id FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
	CONSTRAINT fk_project_id FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
);

INSERT INTO users (name) VALUE ("Bob");
SET @user_bob = LAST_INSERT_ID();


INSERT INTO users (name) VALUE ("Jeanne");
SET @user_jeanne = LAST_INSERT_ID();

INSERT INTO projects (name) VALUE ("C is fun");
SET @project_c = LAST_INSERT_ID();

INSERT INTO projects (name) VALUE ("Python is cool");
SET @project_py = LAST_INSERT_ID();

INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_c, 80),
(@user_bob, @project_py, 96), (@user_jeanne, @project_c, 91), (@user_jeanne, @project_py, 73);
