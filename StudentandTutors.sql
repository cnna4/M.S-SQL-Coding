Create Database StudentsandTutors;
USE StudentsandTutors;
CREATE TABLE Students (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Birthdate DATE
);
CREATE TABLE Tutors (
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
StartDate DATE
);
CREATE TABLE TutoringSessions (
SessionID INT PRIMARY KEY,
StudentID INT,
EmployeeID INT,
SessionDate DATE,
Hours INT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (EmployeeID) REFERENCES Tutors(EmployeeID)
);