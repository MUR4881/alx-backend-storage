-- trigger to valitade email on a database

DELIMITER $$  -- change delimiter, to avoid unnecessary delimiting
CREATE TRIGGER validate_email
BEFORE
UPDATE ON users
FOR EACH ROW
	IF OLD.email <> NEW.email THEN
		SET NEW.valid_email = 0;
	END IF;$$

DELIMITER ;
