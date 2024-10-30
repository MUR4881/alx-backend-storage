-- Creates a view need_meeting
-- The view lists all students that have a score under 80 (strict)
-- And no last_meeting or more than 1 month.

CREATE VIEW need_meeting
    AS
SELECT name
  FROM students
 WHERE score < 80
   AND (ISNULL(last_meeting) OR TIMESTAMPDIFF(MONTH, last_meeting, NOW()) > 1);
