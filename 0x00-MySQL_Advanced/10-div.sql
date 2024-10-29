-- Create a function SafeDiv, divide savely

-- arg a: an integer -> the divident, arg b: the divisor , the result is returned

DELIMITER ##
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT
COMMENT 'SAFE DIVISION, Even with 0 present'
LANGUAGE SQL
DETERMINISTIC
NO SQL
SQL SECURITY INVOKER
BEGIN
	IF b = 0 THEN
		RETURN 0;
	ELSE
		RETURN a / b;
	END IF;
END; ##

DELIMITER ;
