use bharath;


CREATE TABLE employee_info (employee_id INT NOT NULL PRIMARY KEY,employee_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,contact_number VARCHAR(15) UNIQUE,salary INT CHECK (salary > 0));
use bharath;

CREATE TABLE project_info (project_id INT NOT NULL PRIMARY KEY,project_name VARCHAR(100) NOT NULL,
    start_date VARCHAR(10) NOT NULL,end_date VARCHAR(10),budget INT CHECK (budget >= 0));


ALTER TABLE employee_info
ADD CONSTRAINT check_department CHECK (department = 'HR' OR department = 'IT' OR department = 'Finance' OR department = 'Sales');

ALTER TABLE employee_info
DROP CONSTRAINT contact_number;


INSERT INTO employee_info (employee_id, employee_name, department, contact_number, salary) VALUES
(1, 'Ravi Kumar', 'IT', '9876543210', 75000),
(2, 'Anjali Sharma', 'Finance', '8765432109', 80000),
(3, 'Suresh Gupta', 'Sales', '7654321098', 60000),
(4, 'Neha Patel', 'HR', '6543210987', 65000),
(5, 'Vikram Singh', 'IT', '5432109876', 72000);

INSERT INTO project_info (project_id, project_name, start_date, end_date, budget) VALUES
(1, 'Smart City Project', '2023-01-01', '2023-12-31', 5000000),
(2, 'Digital India Initiative', '2023-02-01', '2024-05-31', 8000000),
(3, 'Skill India Campaign', '2023-03-01', '2024-06-30', 3000000),
(4, 'Make in India', '2023-04-01', '2024-04-30', 7000000),
(5, 'Startup India', '2023-05-01', '2024-09-30', 4000000);


ALTER TABLE employee_info
ADD CONSTRAINT unique_employee_name UNIQUE (employee_name);

ALTER TABLE employee_info
DROP CONSTRAINT check_department;

ALTER TABLE project_info
ADD CONSTRAINT check_budget CHECK (budget < 10000000);

ALTER TABLE project_info
DROP CONSTRAINT check_budget;
