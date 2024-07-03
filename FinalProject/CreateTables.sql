#Question 4 - Define Scripts to create tables and Insert minimum of 
#4 data entities into each of the tables

CREATE TABLE hospital.Departments (
    DepartmentID INT PRIMARY KEY,
    DName VARCHAR(100),
    HeadOfDepartment VARCHAR(100),
    FacilityName TEXT REFERENCES  hospital.staffinfo(FacilityName)
);

CREATE TABLE hospital.Staff (
    StaffID INT PRIMARY KEY,
    SName VARCHAR(100),
    Position VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES hospital.Departments(DepartmentID)
);

CREATE TABLE hospital.Patients (
    PatientID INT PRIMARY KEY,
    PName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    AdmissionDate DATE
);

CREATE TABLE hospital.Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    StaffID INT,
    AppointmentDate DATETIME,
    Reason VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES hospital.Patients(PatientID),
    FOREIGN KEY (StaffID) REFERENCES hospital.Staff(StaffID)
);

-- Inserting data into the Departments table
INSERT INTO hospital.Departments (DepartmentID, DName, HeadOfDepartment, FacilityName) VALUES
(1, 'Nursing', 'Jane Doe',"BIGGS-GRIDLEY MEMORIAL HOSPITAL"),
(2, 'Cardiology', 'John Smith',"BIGGS-GRIDLEY MEMORIAL HOSPITAL"),
(3, 'Laboratory', 'Emily Johnson',"BIGGS-GRIDLEY MEMORIAL HOSPITAL"),
(4, 'Administration', 'David Brown',"BIGGS-GRIDLEY MEMORIAL HOSPITAL");

-- Inserting data into the Staff table
INSERT INTO hospital.Staff (StaffID, SName, Position, DepartmentID) VALUES
(1, 'John Doe', 'Nurse', 1),
(2, 'Jane Smith', 'Doctor', 2),
(3, 'David Johnson', 'Technician',3),
(4, 'Emily Brown', 'Administrator',4);

-- Inserting data into the Patients table
INSERT INTO hospital.Patients (PatientID, PName, Age, Gender, AdmissionDate) VALUES
(1, 'Alice Johnson', 35, 'Female', '2009-04-01'),
(2, 'Bob Smith', 45, 'Male', '2009-04-02'),
(3, 'Carol Williams', 60, 'Female', '2009-04-03'),
(4, 'David Jones', 25, 'Male', '2009-04-04');

-- Inserting data into the Appointments table
INSERT INTO hospital.Appointments (AppointmentID, PatientID, StaffID, AppointmentDate, Reason) VALUES
(1, 1, 1, '2009-04-10 09:00:00', 'Routine checkup'),
(2, 2, 2, '2009-04-11 10:00:00', 'Heart examination'),
(3, 3, 3, '2009-04-12 11:00:00', 'Blood test'),
(4, 4, 4, '2009-04-13 12:00:00', 'Administrative consultation');
