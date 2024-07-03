#Question 5 - Required Queries- for each query describe in simple English intended goal
#(f) Triggers

DELIMITER //

CREATE TRIGGER BeforeInsertStaff
BEFORE INSERT ON Staff
FOR EACH ROW
BEGIN
    SET NEW.Position = UPPER(NEW.Position); -- Convert position to uppercase before insertion
END;
//

-- This trigger fires before inserting a new row into the Staff table. It converts the Position value to uppercase before the insertion.

CREATE TRIGGER AfterUpdatePatients
AFTER UPDATE ON Patients
FOR EACH ROW
BEGIN
    IF OLD.Age <> NEW.Age THEN
        INSERT INTO PatientAgeChangeLog (PatientID, OldAge, NewAge, ChangeDate)
        VALUES (OLD.PatientID, OLD.Age, NEW.Age, NOW()); -- Log age changes
    END IF;
END;
//
DELIMITER //
-- This trigger fires after updating a row in the Patients table. It checks if the Age column has changed 
-- and if so, it inserts a new record into the PatientAgeChangeLog table to log the age change along with 
-- the patient ID and the change date.

CREATE TRIGGER AfterInsertStaff
AFTER INSERT ON Staff
FOR EACH ROW
BEGIN
    INSERT INTO StaffLog (StaffID, Action, Timestamp)
    VALUES (NEW.StaffID, 'Inserted', NOW());
END;
//

DELIMITER ;

-- This trigger, named AfterInsertStaff, will execute after each insertion into the Staff table.
--  It will insert a new record into the StaffLog table, capturing the StaffID of the newly inserted record, 
-- the action performed (which is 'Inserted' in this case), and the timestamp of the insertion.