-- Procedure to add a new correction for a student on a project

DELIMITER ##
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
	-- inserting into projects, if not exists project
	INSERT INTO projects (name) VALUE (project_name) ON DUPLICATE KEY
	UPDATE id = id;

	SET @project_id = LAST_INSERT_ID();

	INSERT INTO corrections VALUES (user_id, @project_id, score);
END;##

DELIMITER ;
