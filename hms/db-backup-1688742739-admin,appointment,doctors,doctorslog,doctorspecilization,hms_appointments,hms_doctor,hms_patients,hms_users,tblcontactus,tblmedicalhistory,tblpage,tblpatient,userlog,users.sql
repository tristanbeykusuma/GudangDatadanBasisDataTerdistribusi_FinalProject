DROP TABLE admin;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1");



DROP TABLE appointment;

CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `consultancyFees` int DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int DEFAULT NULL,
  `doctorStatus` int DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO appointment VALUES("1","ENT","1");
INSERT INTO appointment VALUES("2","ENT","1");
INSERT INTO appointment VALUES("3","ENT","1");



DROP TABLE doctors;

CREATE TABLE `doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO doctors VALUES("1","ENT");
INSERT INTO doctors VALUES("2","Endocrinologists");



DROP TABLE doctorslog;

CREATE TABLE `doctorslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO doctorslog VALUES("20","","gfdgdf","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-04 09:02:16","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("21","2","charudua12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 19:59:40","06-11-2022 05:35:18 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("22","2","charudua12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 20:06:37","06-11-2022 05:36:40 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("23","2","charudua12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 20:08:56","06-11-2022 05:42:53 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("24","1","anujk123@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 20:23:18","06-11-2022 05:53:40 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("25","2","charudua12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 21:16:53","06-11-2022 06:47:07 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("26","1","anujk123@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 21:17:33","06-11-2022 06:50:28 PM","1","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("27","","doctor","127.0.0.1\0\0\0\0\0\0\0","2023-07-06 23:53:45","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("28","","anujk123@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-06 23:54:32","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("29","","Anuj kumar","127.0.0.1\0\0\0\0\0\0\0","2023-07-06 23:57:45","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("30","","Anuj kumar","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:16:07","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("31","","tristanbeykusuma@gmail.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:16:17","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("32","","charudua12@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:17:20","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("33","","charudua12@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:17:46","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("34","","anujk123@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:18:17","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("35","","admin","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:18:24","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("36","","anujk123@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:28:05","","0","","","","","","","","","","","");
INSERT INTO doctorslog VALUES("37","1","anujk123@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-07 00:29:14","","1","","","","","","","","","","","");



DROP TABLE doctorspecilization;

CREATE TABLE `doctorspecilization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO doctorspecilization VALUES("1","Orthopedics","2022-10-31 02:09:46","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("2","Internal Medicine","2022-10-31 02:09:57","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("3","Obstetrics and Gynecology","2022-10-31 02:10:18","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("4","Dermatology","2022-10-31 02:10:28","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("5","Pediatrics","2022-10-31 02:10:37","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("6","Radiology","2022-10-31 02:10:46","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("7","General Surgery","2022-10-31 02:10:56","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("8","Ophthalmology","2022-10-31 02:11:03","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("9","Anesthesia","2022-10-31 02:11:15","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("10","Pathology","2022-10-31 02:11:22","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("11","ENT","2022-10-31 02:11:30","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("12","Dental Care","2022-10-31 02:11:39","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("13","Dermatologists","2022-10-31 02:12:02","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("14","Endocrinologists","2022-10-31 02:12:10","","","","","","","","","","","","");
INSERT INTO doctorspecilization VALUES("15","Neurologists","2022-10-31 02:12:30","","","","","","","","","","","","");



DROP TABLE hms_appointments;

CREATE TABLE `hms_appointments` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `specialization_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `consultancy_fee` int NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `appointment_time` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Cancelled','Completed','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




DROP TABLE hms_doctor;

CREATE TABLE `hms_doctor` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fee` int NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO hms_doctor VALUES("1");



DROP TABLE hms_patients;

CREATE TABLE `hms_patients` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `age` int NOT NULL,
  `medical_history` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




DROP TABLE hms_users;

CREATE TABLE `hms_users` (
  `id` int unsigned NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO hms_users VALUES("1");



DROP TABLE tblcontactus;

CREATE TABLE `tblcontactus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tblcontactus VALUES("1","Anuj kumar");
INSERT INTO tblcontactus VALUES("2","Anuj kumar");



DROP TABLE tblmedicalhistory;

CREATE TABLE `tblmedicalhistory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tblmedicalhistory VALUES("1","1");
INSERT INTO tblmedicalhistory VALUES("2","2");



DROP TABLE tblpage;

CREATE TABLE `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OpenningTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO tblpage VALUES("1","aboutus");
INSERT INTO tblpage VALUES("2","contactus");



DROP TABLE tblpatient;

CREATE TABLE `tblpatient` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Docid` int DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tblpatient VALUES("1","1");
INSERT INTO tblpatient VALUES("2","1");



DROP TABLE userlog;

CREATE TABLE `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO userlog VALUES("1","1","johndoe12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 20:14:11","","1","","");
INSERT INTO userlog VALUES("2","1","johndoe12@test.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 20:21:20","06-11-2022 05:53:00 PM","1","","");
INSERT INTO userlog VALUES("3","","amitk@gmail.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 21:15:43","","0","","");
INSERT INTO userlog VALUES("4","2","amitk@gmail.com","::1\0\0\0\0\0\0\0\0\0\0\0\0\0","2022-11-06 21:15:58","06-11-2022 06:50:46 PM","1","","");
INSERT INTO userlog VALUES("5","1","johndoe12@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-03 07:29:01","03-07-2023 04:59:07 AM","1","","");
INSERT INTO userlog VALUES("6","","anujk123@test.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-03 07:29:28","","0","","");
INSERT INTO userlog VALUES("7","","admin","127.0.0.1\0\0\0\0\0\0\0","2023-07-03 07:29:52","","0","","");
INSERT INTO userlog VALUES("8","","admin","127.0.0.1\0\0\0\0\0\0\0","2023-07-06 23:08:00","","0","","");
INSERT INTO userlog VALUES("9","3","tristanbeykusuma@gmail.com","127.0.0.1\0\0\0\0\0\0\0","2023-07-06 23:08:25","06-07-2023 09:23:11 PM","1","","");



DROP TABLE users;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","John Doe","A 123 ABC Apartment GZB 201017");
INSERT INTO users VALUES("2","Amit kumar","new Delhi india");
INSERT INTO users VALUES("3","Tristan Bey Kusuma","Jl.Semarang Blok D8 No.8,Puri Gading,Jimbaran");



