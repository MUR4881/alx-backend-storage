-- Procedure to add a new correction for a student on a project

DELIMITER ##
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
	DECLARE project_id INT;  -- Declare variable to hold value;
	-- Get value into it
	SELECT id INTO project_id FROM projects WHERE name = project_name;
	-- Confirm if the project existed, if not create the project
	IF ISNULL(project_id) THEN
		INSERT INTO projects (name) VALUE (project_name);
		SET project_id = LAST_INSERT_ID();
	END IF;
	-- insert correction into corrections
	INSERT INTO corrections VALUES (user_id, project_id, score);
END;##

DELIMITER ;
