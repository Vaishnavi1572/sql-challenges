/*SQL Question 1: CREATE Table
Scenario:
 You are a data analyst at City Hospital. Management wants to create a new table to store patient details.
Task:
 Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).
Expected Output:
 A new table Patients is created successfully in the database.*/
 create database if not exists CityHospital;
 use CityHospital;
 create table Patients(
			PatientID int,
            PatientName varchar(100),
            age int,
            gender enum('M','F'),
            admission_date date);
 
 
/*SQL Question 2: ALTER – Add Column
Scenario:
 Later, the hospital decides to store the doctor assigned to each patient.
Task:
 Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table.
Expected Output:
 The Patients table now has an additional column DoctorAssigned.*/
Alter table Patients add column DoctorAssigned VARCHAR(50);

/*SQL Question 3: ALTER – Modify Column
Scenario:
 The hospital realizes that some patient names are longer than 50 characters.
Task:
 Write a SQL command to modify the column PatientName from VARCHAR(50) to VARCHAR(100).
Expected Output:
 The column PatientName now allows up to 100 characters.*/
Alter table Patients modify PatientName varchar(150);

/*SQL Question 4: RENAME Table
Scenario:
 For better clarity, the hospital wants to rename Patients to Patient_Info.
Task:
 Write a SQL command to rename the table.
Expected Output:
 The table name is successfully changed to Patient_Info.*/
 Rename table Patients to Patient_Info;
 
 /*SQL Question 5: TRUNCATE vs DROP
Scenario:
 At year-end, they want to delete all patient records but keep the table. Later, they want to remove it permanently.
Task:
 Write SQL commands for TRUNCATE and DROP operations.
Expected Output:
 TRUNCATE keeps structure but clears data; DROP removes the table completely.*/
Truncate table Patient_Info;
SELECT * FROM Patient_Info;
