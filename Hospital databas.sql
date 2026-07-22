Create Database Hospital_System_Managment 

Use Hospital_System_Managment

-- kani waa table oo ku jiraan dadka Hopitalka imaanaya oo shaqada loo qabanaayo 
Create Table Patients (
PatientID INT PRIMARY KEY IDENTITY(1,1), 
Full_Name VARCHAR(50),
Gender varchar (10), 
Date_OF_Birth date not null, 
Phone varchar (50), 
Address varchar(50)
);
-- kana waa mid ay ku jiraan Information Dhakhaatiirta 
Create Table Doctors (
DoctorID INT PRIMARY KEY IDENTITY(1,1),
Doctor_Name varchar(50), 
Specialty varchar(50), 
Doctor_Phone varchar(50), 
Doctor_Email varchar(50)
);

-- kana waxaa ku jira balamaha oo ay qabsadeen macaamisha 
Create Table Appointments (
AppointmentID INT PRIMARY KEY IDENTITY(1,1), 
PatientID INT , 
DoctorID INT , 
Appointment_Date Datetime not null, 
Status varchar(50) ,
-- waa code isku xiraaya AMA Keenaya Relationship!
 Foreign key (PatientID) references Patients(PatientID),
 Foreign key (DoctorID) references Doctors(DoctorID)
);

insert into Patients ( Full_Name, Gender , Date_OF_Birth, Phone , Address)
values ('Mohamed Abdullahi Ahmed', 'Male', '2006-09-10', '0907792123', 'X.Xeryaha'),
       ('Ayaan Cali Cumar', 'Female', '1994-01-11', '0905909447', 'X.Laanta hawada'),
       ('Deeqa Abdirishid jaamac', 'Female', '1980-10-20', '0907728777', 'X.Fadumo'),
       ('Abdullahi Yuusuf Mohamed', 'Male', '1991-02-20', '0907792233', 'X.Ridwaan'),
       ('Sucaad Cumar Cusmaan', 'Female', '2009-01-01', '0905433212', 'X.New Bosaso');


 insert into Doctors (Doctor_Name, Doctor_Email,  Doctor_Phone, Doctor_Specialty)
 values ('Yacquul Cali Ahmed', 'yacquub@gmail.com', '0907794543', 'Cardiologist'), 
        ('Yaxye C/llahi Cali', 'yaxye@gmail.com', '0905679843', 'Pediatrician'),
        ('Muxsin Mohamed Mohamuud', 'muxsin@gmail.com', '0907765412', 'Dentist'), 
        ('C/llahi Yuusuf Mohamed', 'c/llahi@gmail.com', '0905909890', 'General Surgeon'),
        ('Mohamed C/llahi Mohamed', 'mohamed@gmail.com', '0905909447', 'Dermatologist');

 insert into Appointments (PatientID, DoctorID, Appointment_Date, Status )
 values (1, 3, '2026-06-29 09:00:00', 'Completed'),
        (2, 4, '2026-06-29 09:00:00', 'Scheduled'),
        (3, 2, '2026-06-29 09:00:00', 'Completed'),
        (4, 5, '2026-06-29 09:00:00', 'Scheduled'),
        (5, 1, '2026-06-29 09:00:00', 'Cancelled');

select * from Appointments;

Drop Table Appointments;





 


      
