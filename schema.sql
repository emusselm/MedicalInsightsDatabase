create database cardiology;
use cardiology;
CREATE TABLE DOCTOR
(
	drID	INT NOT NULL AUTO_INCREMENT, 
    Fname 	VARCHAR(255) NOT NULL,
    Lname 	VARCHAR(255) NOT NULL,
    phone 	INT,
    office	VARCHAR(255),
	PRIMARY KEY(drID)
);

CREATE TABLE PATIENT
(
	SSN		VARCHAR(20),
    Fname 	VARCHAR(255) NOT NULL,
    Lname 	VARCHAR(255) NOT NULL,
    gender	VARCHAR(10),
    age		INT,
    Street	VARCHAR(255),
    City	VARCHAR(255),
    State	VARCHAR(20),
    Zip		INT, 
    phone	VARCHAR(15),
    doctorID  INT, 
    emergencyNum VARCHAR(15), 
    emergencyName VARCHAR(255),
    PRIMARY KEY(SSN),
    FOREIGN KEY(doctorID) REFERENCES DOCTOR(drID)
    
);

CREATE TABLE MEDICAL_DATA
(
	SSN		VARCHAR(20),
    apptDate DATETIME, 
    cp		VARCHAR(20), 
    trestbps INT, 
    chol	INT, 
    fbs		BOOLEAN, 
    restecg VARCHAR(20),
    thalch  INT, 
    exang	BOOLEAN, 
    oldpeak	DECIMAL(10,2),
    slope	VARCHAR(20),
    thal	VARCHAR(50),
    evaluation INT,
	FOREIGN KEY(SSN) REFERENCES PATIENT(SSN)
    
);

select * from doctor;