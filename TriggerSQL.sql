DELIMITER //
-- Create trigger to update Total credit hours and Cumulative GPA
CREATE TRIGGER UpdateStudentInfo
AFTER INSERT ON COURSE_GRADE
FOR EACH ROW
BEGIN
UPDATE STUDENT
SET Total_credit_hours = Total_credit_hours + NEW.Course_credit_hours,
Cumulative_GPA = (Total_credit_hours * Cumulative_GPA +
NEW.Course_credit_hours * NEW.Grade_point) / (Total_credit_hours +
NEW.Course_credit_hours)
WHERE Student_id = NEW.Student_id;
END;
//
-- Reset delimiter
DELIMITER ;
