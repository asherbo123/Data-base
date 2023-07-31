create database clinical2;
use clinical2;

CREATE TABLE Person
(
  Address VARCHAR(50) NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Sex boolean  NOT NULL,
  ID INT NOT NULL,
  Email VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Patient
(
  Insurance VARCHAR(50),
  Added_date DATE NOT NULL,
  Phone_Number NUMERIC NOT NULL,
  Name VARCHAR(50) NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Person(ID)
);

CREATE TABLE Doctor
(
  Username VARCHAR(50) NOT NULL,
  Password VARCHAR(50) NOT NULL,
  _Degree VARCHAR(50) NOT NULL,
  _Specialization VARCHAR(50) NOT NULL,
  Visita INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Person(ID)
);

CREATE TABLE Receptionist
(
  Duty_Hour DATE NOT NULL,
  Salary INT NOT NULL,
  Hiring_date DATE NOT NULL,
  Position VARCHAR(50) NOT NULL,
  Password VARCHAR(50) NOT NULL,
  Username VARCHAR(50) NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Person(ID)
);

CREATE TABLE Person_Phone_Number
(
  Phone_Number INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (Phone_Number, ID),
  FOREIGN KEY (ID) REFERENCES Person(ID)
);

CREATE TABLE Appiontment
(
  Date DATE NOT NULL,
  A_Number INT NOT NULL,
  Description_ VARCHAR(50) NOT NULL,
  Time Time NOT NULL,
  receptionist_ID INT,
  Patient_ID INT NOT NULL,
  Doctor_ID INT NOT NULL,
  PRIMARY KEY (A_Number),
  FOREIGN KEY (receptionist_ID) REFERENCES Receptionist(ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(ID)
);

CREATE TABLE Patient_history
(
  blood_type CHAR NOT NULL,
  Age INT NOT NULL,
  Weight INT NOT NULL,
  Height INT NOT NULL,
  PH_Number NUMERIC NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (PH_Number),
  FOREIGN KEY (ID) REFERENCES Patient(ID)
);

CREATE TABLE Patient_history_chronic_diseases
(
  chronic_diseases INT NOT NULL,
  PH_Number NUMERIC NOT NULL,
  PRIMARY KEY (chronic_diseases, PH_Number),
  FOREIGN KEY (PH_Number) REFERENCES Patient_history(PH_Number)
);

CREATE TABLE Patient_history_old_surgery_
(
  old_surgery_ INT NOT NULL,
  PH_Number NUMERIC NOT NULL,
  PRIMARY KEY (old_surgery_, PH_Number),
  FOREIGN KEY (PH_Number) REFERENCES Patient_history(PH_Number)
);

CREATE TABLE Patient_history_medicine_allergy
(
  medicine_allergy INT NOT NULL,
  PH_Number NUMERIC NOT NULL,
  PRIMARY KEY (medicine_allergy, PH_Number),
  FOREIGN KEY (PH_Number) REFERENCES Patient_history(PH_Number)
);
ALTER TABLE patient
DROP COLUMN Name;
insert into Person values('nasr', 'youssef','1', '111' ,'youssef@gmail.com');
insert into Person values('maadi', 'sameh','2','112' ,'sameh@gmail.com');
insert into Person values('tagamo3', 'nour','0', '113' ,'nour@gmail.com');
insert into Person values('october', 'kareem','1','114' ,'kareem@gmail.com');
insert into Person values('obour', 'mena','0' ,'115' ,'mena@gmail.com');
insert into Person values('maadi', 'khaled','1' ,'116' ,'khaled@gmail.com');
insert into Person values('zahraa', 'said','1' ,'117' ,'said@gmail.com');
insert into Person values('tagamo', 'mona','0' ,'118' ,'mona@gmail.com');




insert into Patient values('misr tamin', '2022-10-22', '01099112703' , '111');
insert into Patient values('misr tamin', '2022-10-22', '01026812703' , '112');
insert into Patient values('nkaba mohamen', '2022-10-22', '01110882839' , '113');
insert into Patient values('nkaba mohandisin', '2022-10-22', '01026812703' , '114');
SELECT * FROM Person;
SELECT * FROM Patient;

insert into Doctor values('khaled116', "mnb1123", "master", 'elagtabi',"200","116");
insert into Doctor values('said117', "klm859", "dr", 'elagtabi',"250","117");
insert into Doctor values('mona@118', "gt85ik", "deploma", 'elagtabi',"100","118");
SELECT * FROM Doctor;
