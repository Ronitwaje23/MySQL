create schema TestDB;
use testdb;


create table EmployeeData
(
id int NOT NULL auto_increment,
NAME varchar(50),
age int ,
contact int,
primary key(id)
);


alter table EmployeeData 
add column (DOB date);

alter table EmployeeData 
modify contact bigint;

-- truncate table EmployeeData;
drop table EmployeeData;

insert into EmployeeData(Name,age,contact,DOB)value
('minar',25,9921141365,'2013-03-31'),
('kaushal',24,987456310,'2013-02-22');


/*create table EmployeeData1
(
id int NOT NULL,
NAME varchar(50)
);

insert into EmployeeData1
value
(1,'ronit');

drop table EmployeeData1;*/


update EmployeeData set age=30,DOB='2013-01-01'
where id=2;
delete from employeedata 
where id=1;


SELECT * FROM employeedata;

