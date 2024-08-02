create database st;
use st;
CREATE TABLE LLR_INFO (LLR_ID VARCHAR(20) PRIMARY KEY, Applicant_Name VARCHAR(30), Date_of_Birth DATE,
    Address VARCHAR(20),Contact_Number VARCHAR(15), Email VARCHAR(100), Issue_Date DATE, 
    Expiry_Date DATE, Blood_Group VARCHAR(5), Gender VARCHAR(20));

CREATE TABLE LLR_TEST_INFO ( LLR_ID VARCHAR(20), FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID), Applicant_Name VARCHAR(30), 
	TEST_ID VARCHAR(20) PRIMARY KEY,Test_Date DATE,Test_Time TIME,Test_Result ENUM('PASS','FAIL'), Examiner_Name VARCHAR(100), Test_Center VARCHAR(100),        
    Remarks VARCHAR(30),REPORTING_TIME TIMESTAMP);

CREATE TABLE DRIVING_LICENCE_INFO (DL_ID VARCHAR(20) PRIMARY KEY,LLR_ID VARCHAR(20), FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID), TEST_ID VARCHAR(20), 
	FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID),Applicant_Name VARCHAR(100),
    Date_of_Birth DATE,Address VARCHAR(255), Contact_Number VARCHAR(15), Email VARCHAR(100), Issue_Date DATE,      
    DL_Expiry_Date DATE);
    
CREATE TABLE DRIVING_LICENSE_TEST_INFO (DL_ID VARCHAR(20),FOREIGN KEY (DL_ID) REFERENCES DRIVING_LICENCE_INFO(DL_ID),Test_ID VARCHAR(20) PRIMARY KEY, 
	Test_Date DATE,Test_Time TIME, Test_Result ENUM('PASS','FAIL'), Examiner_Name VARCHAR(100), Test_Center VARCHAR(100),       
    Remarks VARCHAR(30),ISSUE_TIME TIMESTAMP);
    
    
    
INSERT INTO LLR_INFO (LLR_ID, Applicant_Name, Date_of_Birth, Address, Contact_Number, Email, Issue_Date, Expiry_Date, Blood_Group, Gender) VALUES
('LLR021', 'Kunal Sharma', '1991-06-11', 'BTM Layout', '9876543230', 'ravi.kumar@gmail.com', '2024-02-01', '2026-02-01', 'O+', 'Male'),
('LLR022', 'Geeta Nair', '1986-09-21', 'Bellandur', '9876543231', 'sita.rao@gmail.com', '2024-02-02', '2026-02-02', 'A+', 'Female'),
('LLR023', 'Vikash Agarwal', '1993-12-15', 'Electronic City', '9876543232', 'arjun.patil@gmail.com', '2024-02-03', '2026-02-03', 'B+', 'Male'),
('LLR024', 'Radha Krishnan', '1996-04-28', 'BTM Layout', '9876543233', 'lakshmi.iyer@gmail.com', '2024-02-04', '2026-02-04', 'AB+', 'Female'),
('LLR025', 'Suresh Kumar', '1989-08-05', 'Sarjapur', '9876543234', 'mohan.reddy@gmail.com', '2024-02-05', '2026-02-05', 'O-', 'Male'),
('LLR026', 'Anjali Mehta', '1992-10-12', 'Kalyan Nagar', '9876543235', 'priya.das@gmail.com', '2024-02-06', '2026-02-06', 'A-', 'Female'),
('LLR027', 'Tarun Joshi', '1988-12-24', 'Domlur', '9876543236', 'rohan.mehta@yahoo.com', '2024-02-07', '2026-02-07', 'B-', 'Male'),
('LLR028', 'Neha Malhotra', '1994-05-19', 'Hebbal', '9876543237', 'sunita.menon@yahoo.com', '2024-02-08', '2026-02-08', 'AB-', 'Female'),
('LLR029', 'Aakash Singh', '1990-03-13', 'Richmond Town', '9876543238', 'vikram.singh@yahoo.com', '2024-02-09', '2026-02-09', 'O+', 'Male'),
('LLR030', 'Snehal Joshi', '1995-07-22', 'Frazer Town', '9876543239', 'nisha.shah@yahoo.com', '2024-02-10', '2026-02-10', 'A+', 'Female'),
('LLR031', 'Ramesh Verma', '1991-02-18', 'BTM Layout', '9876543240', 'aditya.verma@gmail.com', '2024-02-11', '2026-02-11', 'B+', 'Male'),
('LLR032', 'Rashmi Rao', '1986-07-30', 'Bellandur', '9876543241', 'sneha.roy@gmail.com', '2024-02-12', '2026-02-12', 'AB+', 'Female'),
('LLR033', 'Nitin Shetty', '1993-11-14', 'Electronic City', '9876543242', 'karthik.shetty@gmail.com', '2024-02-13', '2026-02-13', 'O-', 'Male'),
('LLR034', 'Rina Nair', '1996-01-07', 'Sarjapur', '9876543243', 'meera.nair@gmail.com', '2024-02-14', '2026-02-14', 'A-', 'Female'),
('LLR035', 'Sandeep Gupta', '1989-09-29', 'Kalyan Nagar', '9876543244', 'sanjay.gupta@yahoo.com', '2024-02-15', '2026-02-15', 'B-', 'Male'),
('LLR036', 'Richa Singh', '1992-11-22', 'Domlur', '9876543245', 'ritu.singh@yahoo.com', '2024-02-16', '2026-02-16', 'AB-', 'Female'),
('LLR037', 'Aman Bhatia', '1988-12-15', 'Hebbal', '9876543246', 'amit.bhatia@yahoo.com', '2024-02-17', '2026-02-17', 'O+', 'Male'),
('LLR038', 'Priyanka Desai', '1994-04-25', 'Richmond Town', '9876543247', 'pooja.desai@yahoo.com', '2024-02-18', '2026-02-18', 'A+', 'Female'),
('LLR039', 'Rajat Khanna', '1990-11-21', 'Frazer Town', '9876543248', 'rajesh.khanna@yahoo.com', '2024-02-19', '2026-02-19', 'B+', 'Male'),
('LLR040', 'Anjali Kapoor', '1995-08-29', 'BTM Layout', '9876543249', 'anita.kapoor@yahoo.com', '2024-02-20', '2026-02-20', 'AB+', 'Female');


INSERT INTO LLR_TEST_INFO (LLR_ID, Applicant_Name, TEST_ID, Test_Date, Test_Time, Test_Result, Examiner_Name, Test_Center, Remarks, REPORTING_TIME) VALUES
('LLR021', 'Kunal Sharma', 'TEST001', '2024-03-01', '09:00:00', 'PASS', 'Dr. Ahuja', 'BTM Layout Test Center', 'Excellent', '2024-03-01 08:45:00'),
('LLR022', 'Geeta Nair', 'TEST002', '2024-03-02', '10:00:00', 'FAIL', 'Mr. Varma', 'Bellandur Test Center', 'Needs Improvement', '2024-03-02 09:45:00'),
('LLR023', 'Vikash Agarwal', 'TEST003', '2024-03-03', '11:00:00', 'PASS', 'Mrs. Sharma', 'Electronic City Test Center', 'Good', '2024-03-03 10:45:00'),
('LLR024', 'Radha Krishnan', 'TEST004', '2024-03-04', '12:00:00', 'PASS', 'Mr. Rao', 'BTM Layout Test Center', 'Very Good', '2024-03-04 11:45:00'),
('LLR025', 'Suresh Kumar', 'TEST005', '2024-03-05', '13:00:00', 'FAIL', 'Dr. Patel', 'Sarjapur Test Center', 'Poor', '2024-03-05 12:45:00'),
('LLR026', 'Anjali Mehta', 'TEST006', '2024-03-06', '14:00:00', 'PASS', 'Ms. Desai', 'Kalyan Nagar Test Center', 'Excellent', '2024-03-06 13:45:00'),
('LLR027', 'Tarun Joshi', 'TEST007', '2024-03-07', '15:00:00', 'PASS', 'Dr. Iyer', 'Domlur Test Center', 'Good', '2024-03-07 14:45:00'),
('LLR028', 'Neha Malhotra', 'TEST008', '2024-03-08', '16:00:00', 'FAIL', 'Mr. Khan', 'Hebbal Test Center', 'Needs Improvement', '2024-03-08 15:45:00'),
('LLR029', 'Aakash Singh', 'TEST009', '2024-03-09', '17:00:00', 'PASS', 'Mrs. Joshi', 'Richmond Town Test Center', 'Very Good', '2024-03-09 16:45:00'),
('LLR030', 'Snehal Joshi', 'TEST010', '2024-03-10', '18:00:00', 'PASS', 'Mr. Singh', 'Frazer Town Test Center', 'Excellent', '2024-03-10 17:45:00'),
('LLR031', 'Ramesh Verma', 'TEST011', '2024-03-11', '09:00:00', 'FAIL', 'Mr. Patel', 'BTM Layout Test Center', 'Needs Improvement', '2024-03-11 08:45:00'),
('LLR032', 'Rashmi Rao', 'TEST012', '2024-03-12', '10:00:00', 'PASS', 'Dr. Mehta', 'Bellandur Test Center', 'Good', '2024-03-12 09:45:00'),
('LLR033', 'Nitin Shetty', 'TEST013', '2024-03-13', '11:00:00', 'FAIL', 'Ms. Nair', 'Electronic City Test Center', 'Poor', '2024-03-13 10:45:00'),
('LLR034', 'Rina Nair', 'TEST014', '2024-03-14', '12:00:00', 'PASS', 'Mr. Kumar', 'Sarjapur Test Center', 'Very Good', '2024-03-14 11:45:00'),
('LLR035', 'Sandeep Gupta', 'TEST015', '2024-03-15', '13:00:00', 'PASS', 'Mrs. Sharma', 'Kalyan Nagar Test Center', 'Excellent', '2024-03-15 12:45:00'),
('LLR036', 'Richa Singh', 'TEST016', '2024-03-16', '14:00:00', 'FAIL', 'Dr. Ahuja', 'Domlur Test Center', 'Needs Improvement', '2024-03-16 13:45:00'),
('LLR037', 'Aman Bhatia', 'TEST017', '2024-03-17', '15:00:00', 'PASS', 'Mr. Varma', 'Hebbal Test Center', 'Good', '2024-03-17 14:45:00'),
('LLR038', 'Priyanka Desai', 'TEST018', '2024-03-18', '16:00:00', 'PASS', 'Mrs. Rao', 'Richmond Town Test Center', 'Very Good', '2024-03-18 15:45:00'),
('LLR039', 'Rajat Khanna', 'TEST019', '2024-03-19', '17:00:00', 'FAIL', 'Ms. Patel', 'Frazer Town Test Center', 'Poor', '2024-03-19 16:45:00'),
('LLR040', 'Anjali Kapoor', 'TEST020', '2024-03-20', '18:00:00', 'PASS', 'Mr. Iyer', 'BTM Layout Test Center', 'Excellent', '2024-03-20 17:45:00');


INSERT INTO DRIVING_LICENCE_INFO (DL_ID, LLR_ID, TEST_ID, Applicant_Name, Date_of_Birth, Address, Contact_Number, Email, Issue_Date, DL_Expiry_Date) VALUES
('DL001', 'LLR021', 'TEST001', 'Kunal Sharma', '1991-06-11', 'BTM Layout', '9876543230', 'ravi.kumar@gmail.com', '2024-04-01', '2029-04-01'),
('DL002', 'LLR022', 'TEST002', 'Geeta Nair', '1986-09-21', 'Bellandur', '9876543231', 'sita.rao@gmail.com', '2024-04-02', '2029-04-02'),
('DL003', 'LLR023', 'TEST003', 'Vikash Agarwal', '1993-12-15', 'Electronic City', '9876543232', 'arjun.patil@gmail.com', '2024-04-03', '2029-04-03'),
('DL004', 'LLR024', 'TEST004', 'Radha Krishnan', '1996-04-28', 'BTM Layout', '9876543233', 'lakshmi.iyer@gmail.com', '2024-04-04', '2029-04-04'),
('DL005', 'LLR025', 'TEST005', 'Suresh Kumar', '1989-08-05', 'Sarjapur', '9876543234', 'mohan.reddy@gmail.com', '2024-04-05', '2029-04-05'),
('DL006', 'LLR026', 'TEST006', 'Anjali Mehta', '1992-10-12', 'Kalyan Nagar', '9876543235', 'priya.das@gmail.com', '2024-04-06', '2029-04-06'),
('DL007', 'LLR027', 'TEST007', 'Tarun Joshi', '1988-12-24', 'Domlur', '9876543236', 'rohan.mehta@yahoo.com', '2024-04-07', '2029-04-07'),
('DL008', 'LLR028', 'TEST008', 'Neha Malhotra', '1994-05-19', 'Hebbal', '9876543237', 'sunita.menon@yahoo.com', '2024-04-08', '2029-04-08'),
('DL009', 'LLR029', 'TEST009', 'Aakash Singh', '1990-03-13', 'Richmond Town', '9876543238', 'vikram.singh@yahoo.com', '2024-04-09', '2029-04-09'),
('DL010', 'LLR030', 'TEST010', 'Snehal Joshi', '1995-07-22', 'Frazer Town', '9876543239', 'nisha.shah@yahoo.com', '2024-04-10', '2029-04-10'),
('DL011', 'LLR031', 'TEST011', 'Ramesh Verma', '1991-02-18', 'BTM Layout', '9876543240', 'aditya.verma@gmail.com', '2024-04-11', '2029-04-11'),
('DL012', 'LLR032', 'TEST012', 'Rashmi Rao', '1986-07-30', 'Bellandur', '9876543241', 'sneha.roy@gmail.com', '2024-04-12', '2029-04-12'),
('DL013', 'LLR033', 'TEST013', 'Nitin Shetty', '1993-11-14', 'Electronic City', '9876543242', 'karthik.shetty@gmail.com', '2024-04-13', '2029-04-13'),
('DL014', 'LLR034', 'TEST014', 'Rina Nair', '1996-01-07', 'Sarjapur', '9876543243', 'meera.nair@gmail.com', '2024-04-14', '2029-04-14'),
('DL015', 'LLR035', 'TEST015', 'Sandeep Gupta', '1989-09-29', 'Kalyan Nagar', '9876543244', 'sanjay.gupta@yahoo.com', '2024-04-15', '2029-04-15'),
('DL016', 'LLR036', 'TEST016', 'Richa Singh', '1992-11-22', 'Domlur', '9876543245', 'ritu.singh@yahoo.com', '2024-04-16', '2029-04-16'),
('DL017', 'LLR037', 'TEST017', 'Aman Bhatia', '1988-12-15', 'Hebbal', '9876543246', 'amit.bhatia@yahoo.com', '2024-04-17', '2029-04-17'),
('DL018', 'LLR038', 'TEST018', 'Priyanka Desai', '1994-04-25', 'Richmond Town', '9876543247', 'pooja.desai@yahoo.com', '2024-04-18', '2029-04-18'),
('DL019', 'LLR039', 'TEST019', 'Rajat Khanna', '1990-11-21', 'Frazer Town', '9876543248', 'rajesh.khanna@yahoo.com', '2024-04-19', '2029-04-19'),
('DL020', 'LLR040', 'TEST020', 'Anjali Kapoor', '1995-08-29', 'BTM Layout', '9876543249', 'anita.kapoor@yahoo.com', '2024-04-20', '2029-04-20');


INSERT INTO DRIVING_LICENSE_TEST_INFO (DL_ID, Test_ID, Test_Date, Test_Time, Test_Result, Examiner_Name, Test_Center, Remarks, ISSUE_TIME) VALUES
('DL001', 'TEST101', '2024-05-01', '09:00:00', 'PASS', 'Dr. Ahuja', 'BTM Layout Test Center', 'Excellent', '2024-05-01 08:45:00'),
('DL002', 'TEST102', '2024-05-02', '10:00:00', 'FAIL', 'Mr. Varma', 'Bellandur Test Center', 'Needs Improvement', '2024-05-02 09:45:00'),
('DL003', 'TEST103', '2024-05-03', '11:00:00', 'PASS', 'Mrs. Sharma', 'Electronic City Test Center', 'Good', '2024-05-03 10:45:00'),
('DL004', 'TEST104', '2024-05-04', '12:00:00', 'PASS', 'Mr. Rao', 'BTM Layout Test Center', 'Very Good', '2024-05-04 11:45:00'),
('DL005', 'TEST105', '2024-05-05', '13:00:00', 'FAIL', 'Dr. Patel', 'Sarjapur Test Center', 'Poor', '2024-05-05 12:45:00'),
('DL006', 'TEST106', '2024-05-06', '14:00:00', 'PASS', 'Ms. Desai', 'Kalyan Nagar Test Center', 'Excellent', '2024-05-06 13:45:00'),
('DL007', 'TEST107', '2024-05-07', '15:00:00', 'PASS', 'Dr. Iyer', 'Domlur Test Center', 'Good', '2024-05-07 14:45:00'),
('DL008', 'TEST108', '2024-05-08', '16:00:00', 'FAIL', 'Mr. Khan', 'Hebbal Test Center', 'Needs Improvement', '2024-05-08 15:45:00'),
('DL009', 'TEST109', '2024-05-09', '17:00:00', 'PASS', 'Mrs. Joshi', 'Richmond Town Test Center', 'Very Good', '2024-05-09 16:45:00'),
('DL010', 'TEST110', '2024-05-10', '18:00:00', 'PASS', 'Mr. Singh', 'Frazer Town Test Center', 'Excellent', '2024-05-10 17:45:00'),
('DL011', 'TEST111', '2024-05-11', '09:00:00', 'FAIL', 'Mr. Patel', 'BTM Layout Test Center', 'Needs Improvement', '2024-05-11 08:45:00'),
('DL012', 'TEST112', '2024-05-12', '10:00:00', 'PASS', 'Dr. Mehta', 'Bellandur Test Center', 'Good', '2024-05-12 09:45:00'),
('DL013', 'TEST113', '2024-05-13', '11:00:00', 'FAIL', 'Ms. Nair', 'Electronic City Test Center', 'Poor', '2024-05-13 10:45:00'),
('DL014', 'TEST114', '2024-05-14', '12:00:00', 'PASS', 'Mr. Kumar', 'Sarjapur Test Center', 'Very Good', '2024-05-14 11:45:00'),
('DL015', 'TEST115', '2024-05-15', '13:00:00', 'PASS', 'Mrs. Sharma', 'Kalyan Nagar Test Center', 'Excellent', '2024-05-15 12:45:00'),
('DL016', 'TEST116', '2024-05-16', '14:00:00', 'FAIL', 'Dr. Ahuja', 'Domlur Test Center', 'Needs Improvement', '2024-05-16 13:45:00'),
('DL017', 'TEST117', '2024-05-17', '15:00:00', 'PASS', 'Mr. Varma', 'Hebbal Test Center', 'Good', '2024-05-17 14:45:00'),
('DL018', 'TEST118', '2024-05-18', '16:00:00', 'PASS', 'Mrs. Rao', 'Richmond Town Test Center', 'Very Good', '2024-05-18 15:45:00'),
('DL019', 'TEST119', '2024-05-19', '17:00:00', 'FAIL', 'Ms. Patel', 'Frazer Town Test Center', 'Poor', '2024-05-19 16:45:00'),
('DL020', 'TEST120', '2024-05-20', '18:00:00', 'PASS', 'Mr. Iyer', 'BTM Layout Test Center', 'Excellent', '2024-05-20 17:45:00');


SELECT*FROM  LLR_INFO;
SELECT*FROM  LLR_TEST_INFO;
SELECT*FROM  DRIVING_LICENCE_INFO;
SELECT*FROM  DRIVING_LICENSE_TEST_INFO;
