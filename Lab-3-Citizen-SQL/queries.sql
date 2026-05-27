-- Citizen Description
CREATE TABLE CITIZEN (
	C_ID INT,
	C_NAME VARCHAR(10),
	C_HOME VARCHAR(10),
	AGE INT,
	OCCUPATION VARCHAR(15),
	GENDER VARCHAR(6),
	SALARY INT,
	PRIMARY KEY (C_ID)
);

INSERT INTO CITIZEN VALUES (1, 'Alice', 'Dhaka', 25, 'Teacher', 'Male', 50000);
INSERT INTO CITIZEN VALUES (2, 'Bob', 'Dhaka', 56, 'Service', 'Male', 60000);
INSERT INTO CITIZEN VALUES (3, 'Charlie', 'Ctg', 71, 'Retired', 'Male', 10000);
INSERT INTO CITIZEN VALUES (4, 'Erin', 'Ctg', 13, 'Student', 'Female', 500);
INSERT INTO CITIZEN VALUES (5, 'Dave', 'Dhaka', 45, 'Service', 'Male', 40000);
INSERT INTO CITIZEN VALUES (6, 'Faythe', 'Gazipur', 54, 'Doctor', 'Female', 55000);
INSERT INTO CITIZEN VALUES (7, 'Grace', 'Gazipur', 65, 'Musician', 'Female', 5000);
INSERT INTO CITIZEN VALUES (8, 'Ivan', 'Dhaka', 56, 'Engineer', 'Male', 60000);
INSERT INTO CITIZEN VALUES (9, 'Frank', 'Ctg', 23, 'Student', 'Male', 1000);
INSERT INTO CITIZEN VALUES (10, 'Micheal', 'Comilla', 32, 'Teacher', 'Male', 45000);
INSERT INTO CITIZEN VALUES (11, 'Niaj', 'Comilla', 51, 'Farmer', 'Male', 20000);
INSERT INTO CITIZEN VALUES (12, 'Heidi', 'Khulna', 15, 'Student', 'Female', 1500);
INSERT INTO CITIZEN VALUES (13, 'Ted', 'Ctg', 25, 'Business', 'Male', 100000);
INSERT INTO CITIZEN VALUES (14, 'Walter', 'Comilla', 52, 'Doctor', 'Male', 70000);
INSERT INTO CITIZEN VALUES (15, 'Victor', 'Gazipur', 53, 'Teacher', 'Male', 50000);
INSERT INTO CITIZEN VALUES (16, 'Judy', 'Dhaka', 35, 'Musician', 'Female', 50000);
INSERT INTO CITIZEN VALUES (17, 'Pat', 'Khulna', 43, 'Service', 'Male', 50000);
INSERT INTO CITIZEN VALUES (18, 'Olivia', 'Khulna', 34, 'Service', 'Female', 45000);
INSERT INTO CITIZEN VALUES (19, 'Trent', 'Ctg', 16, 'Student', 'Male', 500);
INSERT INTO CITIZEN VALUES (20, 'Peggy', 'Comilla', 32, 'Business', 'Female', 120000);
INSERT INTO CITIZEN VALUES (21, 'Wendy', 'Ctg', 25, 'Musician', 'Female', 100000);
INSERT INTO CITIZEN VALUES (22, 'Oscar', 'Gazipur', 14, 'Student', 'Male', 400);
INSERT INTO CITIZEN VALUES (23, 'Mallet', 'Dhaka', 25, 'Engineer', 'Male', 50000);

SELECT * FROM CITIZEN;
SELECT C_NAME, AGE, OCCUPATION FROM CITIZEN;
SELECT C_NAME FROM CITIZEN WHERE C_HOME = 'Dhaka';
SELECT C_NAME, C_HOME FROM CITIZEN WHERE AGE < 45;
SELECT * FROM CITIZEN WHERE SALARY BETWEEN 50000 AND 90000;
SELECT * FROM CITIZEN WHERE GENDER = 'Female';
SELECT * FROM CITIZEN WHERE OCCUPATION IN ('Engineer','Doctor','Retired');
SELECT C_ID, C_NAME, SALARY FROM CITIZEN WHERE OCCUPATION IN ('Musician','Business');
SELECT * FROM CITIZEN WHERE OCCUPATION IN ('Doctor','Engineer');
SELECT * FROM CITIZEN WHERE OCCUPATION = 'Engineer' ORDER BY SALARY;
SELECT C_NAME, AGE FROM CITIZEN ORDER BY AGE DESC, C_NAME ASC;
SELECT DISTINCT C_HOME AS Unique_District FROM CITIZEN;
CREATE TABLE Updated_Citizen AS SELECT * FROM CITIZEN;
UPDATE Updated_Citizen SET C_HOME='Chittagong' WHERE C_HOME='Ctg';
DELETE FROM Updated_Citizen LIMIT 10;
UPDATE Updated_Citizen SET SALARY = SALARY * 1.3;
