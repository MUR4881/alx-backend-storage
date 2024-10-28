-- Procedure to compute average score for user

-- takes one input, user_id, a user.id value

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
	UPDATE users 
	SET average_score = ( SELECT AVG(score) -- Determine average value for the user
				FROM corrections
				WHERE corrections.user_id = user_id
					)
	WHERE id = user_id;
