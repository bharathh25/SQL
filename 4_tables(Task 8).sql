use task;
CREATE TABLE student_info (student_id INT NOT NULL PRIMARY KEY,student_name VARCHAR(100) NOT NULL,
    course VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE,age INT CHECK (age > 0));

ALTER TABLE student_info
ADD CONSTRAINT unique_student_name UNIQUE (student_name);


INSERT INTO student_info (student_id, student_name, course, email, age) VALUES
(1, 'Rahul Verma', 'B.Tech', 'rahul.verma@gmail.com', 20),
(2, 'Anjali Gupta', 'MBA', 'anjali.gupta@gmail.com', 22),
(3, 'Ravi Singh', 'M.Sc', 'ravi.singh@gmail.com', 24),
(4, 'Neha Patel', 'B.Sc', 'neha.patel@gmail.com', 21),
(5, 'Suresh Reddy', 'B.Tech', 'suresh.reddy@gmail.com', 23);

ALTER TABLE student_info
ADD CONSTRAINT check_age CHECK (age >= 18);

ALTER TABLE student_info drop constraint check_age;

ALTER TABLE student_info
DROP CONSTRAINT unique_student_name;

CREATE TABLE faculty_info (faculty_id INT NOT NULL PRIMARY KEY,faculty_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,contact_number VARCHAR(15) UNIQUE,salary INT CHECK (salary > 0));

ALTER TABLE faculty_info
ADD CONSTRAINT unique_faculty_name UNIQUE (faculty_name);



INSERT INTO faculty_info (faculty_id, faculty_name, department, contact_number, salary) VALUES
(1, 'Dr. Anil Joshi', 'Computer Science', '9876543210', 90000),
(2, 'Prof. Priya Mehta', 'Management', '8765432109', 85000),
(3, 'Mr. Ravi Sharma', 'Physics', '7654321098', 80000),
(4, 'Ms. Kavita Rao', 'Mathematics', '6543210987', 95000),
(5, 'Dr. Neha Verma', 'Management', '5432109876', 87000);

ALTER TABLE faculty_info
ADD CONSTRAINT check_salary CHECK (salary > 50000);

ALTER TABLE faculty_info
DROP CONSTRAINT check_salary;

ALTER TABLE faculty_info
DROP CONSTRAINT unique_faculty_name;

CREATE TABLE course_info (course_id INT NOT NULL PRIMARY KEY,course_name VARCHAR(100) NOT NULL,
    duration VARCHAR(20) NOT NULL,fees INT CHECK (fees >= 0));

ALTER TABLE course_info
ADD CONSTRAINT unique_course_name UNIQUE (course_name);



INSERT INTO course_info (course_id, course_name, duration, fees) VALUES
(1, 'B.Tech in Computer Science', '4 Years', 200000),
(2, 'MBA in Marketing', '2 Years', 400000),
(3, 'M.Sc in Physics', '2 Years', 150000),
(4, 'B.Sc in Mathematics', '3 Years', 100000),
(5, 'B.Tech in Information Technology', '4 Years', 250000);

ALTER TABLE course_info
ADD CONSTRAINT check_fees CHECK (fees >= 100000);

ALTER TABLE course_info
DROP CONSTRAINT check_fees;

ALTER TABLE course_info
DROP CONSTRAINT unique_course_name;

CREATE TABLE enrollment_info (enrollment_id INT NOT NULL PRIMARY KEY,student_id INT NOT NULL,
    course_id INT NOT NULL,enrollment_date VARCHAR(10) NOT NULL, 
    days int CHECK (days >10)
);

ALTER TABLE enrollment_info
ADD CONSTRAINT unique_enrollment_id UNIQUE (enrollment_id);



INSERT INTO enrollment_info (enrollment_id, student_id, course_id, enrollment_date, days) VALUES
(1, 1, 1, '2024-01-01', 15),
(2, 2, 2, '2024-01-02', 34),
(3, 3, 3, '2024-01-03', 45),
(4, 4, 1, '2024-01-04', 65),
(5, 5, 2, '2024-01-05', 22);

ALTER TABLE enrollment_info
ADD CONSTRAINT check_days CHECK (days >=15 );

ALTER TABLE enrollment_info
DROP CONSTRAINT check_days;

ALTER TABLE enrollment_info
DROP CONSTRAINT unique_enrollment_id;




