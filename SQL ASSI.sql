create database marketco;
use marketco;
create table company(
companyid int,
companyname varchar(45),
street varchar(45),
state varchar(2),
zip varchar(10)
);
create table contact(
contactid int primary key,
companyid int,
firstname varchar(45),
lastname varchar(45),
street varchar(45),
city varchar(45),
state varchar(2),
zip varchar(10),
ismain boolean,
email varchar(45),
phone varchar(12)
);
create table contactemployee(
contactemployeeid int,
contactid int primary key,
employeeid int,
contactdate date,
description varchar(100)
);
create table employee(
employeeid int primary key,
firstname varchar(45),
lastname varchar(45),
salary decimal(10,2),
hiredate date,
jobtitle varchar(25),
email varchar(45),
phone varchar(12)
);
set sql_safe_updates=0;
update employee
set phone = '215-555-8800'
where firstname='lesley'and lastname='bland';
update company
set companyname='urban outfitters'
where companyname='urban outfitters inc.';
delete from contactemployee
where employeeid =
(select employeeid 
from employee 
where firstname = 'Dianne' and lastname = 'Connor')
and contactid =
(select contactid
 from contact
 where firstname = 'Jack' and lastname = 'Lee');
 select distinct e.firstname, e.lastname
from employee e
join contactemployee ce on e.employeeid = ce.employeeid
join contact c on ce.contactid = c.contactid
join company co on c.companyid = co.companyid
where co.companyname = 'Toll Brothers';
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
-- There are two wildcards often used in conjunction with the LIKE operator
-- The percent sign % represents zero, one, or multiple characters
-- The underscore sign _ represents one, single character


