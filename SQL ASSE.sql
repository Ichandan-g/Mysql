create database Company;
use Company;
create table worker(
WORKER_ID INT,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE datetime,
DEPARTMENT VARCHAR(25)
);
INSERT INTO worker
(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values
(1,'Monika','Arora',100000,'2014-2-20 9:00','HR'),
(2,'Niharika','Verma',80000,'2014-6-11 9:00','Admin'),
(3,'Vishal','Singhal',300000,'2014-2-20 9:00','HR'),
(4,'Amitabh','Singh',500000,'2014-2-20 9:00','Admin'),
(5,'Vivek','Bhati',500000,'2014-6-11 9:00','Admin'),
(6,'Vipul','Diwan',200000,'2014-6-11 9:00','Account'),
(7,'Satish','Kumar',75000,'2014-1-20 9:00','Account'),
(8,'Geetika','Chauhan',90000,'2014-4-11 9:00','Admin');
select *
from worker
order by FIRST_NAME asc,LAST_NAME desc;
SELECT * 
FROM Worker 
WHERE FIRST_NAME IN ('Vipul', 'Satish');
SELECT *
FROM Worker 
WHERE FIRST_NAME LIKE '_____h' 
AND LENGTH(FIRST_NAME) = 6;
SELECT * 
FROM Worker 
WHERE SALARY BETWEEN 100000 AND 500000;
SELECT WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT, COUNT(*) AS duplicate_count
FROM worker
GROUP BY WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT
HAVING COUNT(*) > 1;
select *
from worker
limit 6;
select DEPARTMENT,COUNT(*) AS employee_count
from worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;
select DEPARTMENT,COUNT(*)
from worker
group by DEPARTMENT;
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY
FROM Worker w
WHERE SALARY = (
    SELECT MAX(SALARY) 
    FROM Worker 
    WHERE DEPARTMENT = w.DEPARTMENT
);



