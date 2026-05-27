CREATE DATABASE University_new;
USE University_new;

CREATE TABLE department (
    department_id INT,
    name VARCHAR(30) PRIMARY KEY,
    building VARCHAR(30),
    establish_year INT
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(30),
    cgpa INT,
    dept VARCHAR(30),
    hometown VARCHAR(30),
    CONSTRAINT f1 FOREIGN KEY (dept) REFERENCES department(name)
);

CREATE TABLE course (
    course_code INT PRIMARY KEY,
    name VARCHAR(30),
    credit INT,
    dept VARCHAR(30),
    CONSTRAINT f2 FOREIGN KEY (dept) REFERENCES department(name)
);

CREATE TABLE result (
    student_id INT,
    course_code INT,
    marks INT,
    grade INT,
    PRIMARY KEY (student_id, course_code),
    CONSTRAINT f3 FOREIGN KEY (student_id) REFERENCES student(student_id),
    CONSTRAINT f4 FOREIGN KEY (course_code) REFERENCES course(course_code)
);

INSERT INTO department VALUES
(287, 'CSE', 'b3', 2000),
(002, 'EEE', 'b3', 2001),
(003, 'ENG', 'b4', 2002),
(004, 'BBA', 'b5', 2003);

INSERT INTO student VALUES
(287, 'Raju', 4, 'CSE', 'Savar'),
(002, 'Anik', 4, 'CSE', 'Dhaka'),
(003, 'Abir', 4, 'CSE', 'Mirpur'),
(004, 'Sabbir', 4, 'CSE', 'Dhaka');

INSERT INTO course VALUES
(287, 'OOP', 40, 'CSE'),
(200, 'OS', 41, 'CSE'),
(231, 'DLD', 44, 'CSE'),
(221, 'RS', 48, 'CSE');

INSERT INTO result VALUES
(30, 20, 40, 20),
(20, 20, 42, 60),
(30, 20, 44, 50),
(40, 20, 40, 90);

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM department;
SELECT * FROM result;

SELECT student_id, dept FROM student;
SELECT course_code, dept FROM course;
SELECT student_id, course_code, grade FROM result;
SELECT name, building, establish_year FROM department;
