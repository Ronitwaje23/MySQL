create schema PayroleDataDB;
use PayroleDataDB;
create table Payrole1
(
id int NOT NULL AUTO_INCREMENT,
Name varchar(50),
salary float,
startdate date,
PRIMARY KEY (id) 
);
select *from Payrole1;
insert into Payrole1 (Name, salary, startdate) values
('Dhoni', 8000000.00, '2005-07-25'),
('Dawan', 5000000.00, '2008-03-22'),
('Smrithi', 3000000.00, '2018-05-15'),
('kaur', 2000000.00, '2016-02-03'),
('Sadvitha', 5000000.00, '2019-05-28');
Alter table Payrole1 add Gender char(1);
Update Payrole1 set Gender = 'M' where id in (1, 2);
Update Payrole1 set Gender = 'F' where id in (3,4,5);
delete from Payrole1 where id=6;
delete from Payrole1 where id=7;
delete from Payrole1 where id=8;
delete from Payrole1 where id=9;
ALTER TABLE Payrole1  DROP COLUMN phone;  
ALTER TABLE Payrole1 ADD COLUMN City varchar(50) AFTER Gender;

truncate table payrole1;
ALTER TABLE payrole1 RENAME TO Payrole2;

select *from Payrole2;

update Payrole2
set Name='Dhoni', City='GOA'
where id=1;
update Payrole2
set Name='Dawan', City='Delhi'
where id=2;
update Payrole2
set Name='Smrithi', City='Delhi'
where id=3;
update Payrole2
set Name='kaur', City='Mumbai'
where id=4;

select *from Payrole2;

 Delete from Payrole2 where id=5;
 select distinct name from Payrole2;
 select max(Salary) maxsalary from Payrole2;
 select min(Salary) minsalary from Payrole2;
 select city from Payrole2;
select Name from Payrole2;
select Gender from Payrole2;

SELECT COUNT(name) FROM Payrole2;

SELECT SUM(salary) AS "Total salary" FROM Payrole2;   
SELECT AVG(salary) AS "AVG salary" FROM Payrole2;  
 SELECT MIN(salary) AS "MIN salary" FROM Payrole2;  
SELECT startdate FROM Payrole2 LIMIT 2;    