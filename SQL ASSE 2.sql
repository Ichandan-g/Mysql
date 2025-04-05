CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE STUDENT(
StdID INT,
StdName varchar(25),
Sex varchar(25),
Percentage int,
Class int,
Sec varchar(5),
streaam varchar(25),
DOB date);
INSERT INTO STUDENT
(StdID ,StdName,Sex,Percentage,Class,Sec,streaam,DOB)
values
(1001,'Surekha Joshi','Female',82,12,'A','Science','1998-03-08'),
(1002,'MAAHI AGARWAL','Female',56,11,'C','Commerce','2008-11-23'),
(1003,'Sanam Verma','Male',59,11,'C','Commerce','2006-06-29'),
(1004,'Ronit Kumar','Male',63,11,'C','Commerce','1997-11-05'),
(1005,'Dipesh Pulkit','Male',78,11,'B','Science','2003-09-14'),
(1006,'JAHANVI PURI','Female',60,11,'B','Commerce','2008-07-11'),
(1007,'Sanam Kumar','Male',23,12,'F','Commerce','1998-08-03'),
(1008,'SAHIL SARAS','Male',56,11,'C','Commerce','2008-07-11'),
(1009,'AKSHRA AGARWAL','Female',72,12,'B','Commerce','1996-01-10'),
(1010,'STUTI MISHRA','Female',39,11,'F','Science','2008-11-23'),
(1011,'HARSH AGARWAL','Male',42,11,'C','Science','1998-03-08'),
(1012,'NIKUNJ AGARWAL','Male',49,12,'C','Commerce','1998-06-28'),
(1013,'AKRITI SAXENA','Female',89,12,'A','Science','2008-11-23'),
(1014,'TANI RASTOGI','Female',82,12,'A','Science','2008-11-23');
select*from STUDENT;
SELECT StdName,DOB
FROM STUDENT;
SELECT*FROM STUDENT
WHERE Percentage >=80;
SELECT StdName,Streaam,Percentage
from STUDENT
WHERE Percentage>80;
SELECT * FROM student
WHERE streaam = 'Science'
AND percentage > 75;
