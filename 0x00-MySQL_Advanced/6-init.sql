DROP TABLES IF EXISTS corrections, users, projects;

CREATE TABLE IF NOT EXISTS users (
	id int not null auto_increment,
	name varchar(255) not null,
	average_score float default 0,
	Primary key (id)
	);
CREATE TABLE IF NOT EXISTS projects (
	id int not null auto_increment,
	name varchar(255) not null,
	primary key(id)
	);

CREATE TABLE IF NOT EXISTS corrections (
	user_id int not null,
	project_id int not null,
	score int default 0,
	key `user_id` (`user_id`),
	key `project_id` (`project_id`),
	constraint fk_user_id FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
	constraint fk_project_id FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
	);

INSERT INTO users (name) VALUES("Bob");
SET @user_bob = LAST_INSERT_ID();

INSERT INTO users (name) VALUES ("Jeanne");
SET @user_jeanne = LAST_INSERT_ID();

INSERT INTO projects (name) VALUES ("Python is cool");
SET @project_py = LAST_INSERT_ID();

INSERT INTO projects (name) VALUES ("C is fun");
SET @project_c = LAST_INSERT_ID();

INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_c, 80);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_c, 91);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_c, 91);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_py, 73);
