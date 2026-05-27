-- 1. Create Database
CREATE DATABASE cse208_sec3;

-- 2. Create Employee Table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    hometown VARCHAR(100)
);

-- 3. Insert 5 values into employee
INSERT INTO employee VALUES
(1,'Alice',50000,'Dhaka'),
(2,'Bob',60000,'Chittagong'),
(3,'Charlie',55000,'Khulna'),
(4,'David',52000,'Rajshahi'),
(5,'Eve',58000,'Sylhet');

-- 4. Display entire employee table
SELECT * FROM employee;

-- 5. Only name
SELECT name FROM employee;

-- 6. Only ID and salary
SELECT id, salary FROM employee;

-- 7. Create department table
CREATE TABLE department (
    dept_name VARCHAR(100),
    building VARCHAR(100),
    room INT,
    budget DECIMAL(12,2)
);

-- 8. Add FacultyCount column (VARCHAR first)
ALTER TABLE department
ADD COLUMN FacultyCount VARCHAR(50);

-- 9. Change datatype to INT
ALTER TABLE department
ALTER COLUMN FacultyCount TYPE INT;

-- 10. Insert FacultyCount values (partial update concept)
INSERT INTO department (dept_name, building, room, budget, FacultyCount) VALUES
('CSE','A',101,1000000,25),
('EEE','B',202,900000,20),
('ME','C',303,850000,18),
('CE','D',404,950000,22),
('BBA','E',505,800000,15);

-- 11. View department table
SELECT * FROM department;

-- 12. Specific columns
SELECT dept_name, building, budget FROM department;

-- 13. Rename budget column
ALTER TABLE department
RENAME COLUMN budget TO budget_2025;

-- 14. Drop room column
ALTER TABLE department
DROP COLUMN room;
