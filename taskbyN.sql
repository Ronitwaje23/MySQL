create schema TestDB1;
use testdb1;

create table EmployeeData
(
id int NOT NULL auto_increment,
NAME varchar(50),
age int ,
contact bigint,
DOB date,
primary key(id)
);

SELECT * FROM EmployeeData;

insert into EmployeeData(Name,age,contact,DOB)value
('akash',21,8989562341,'2015-03-31'),
('omkar',28,8989562342,'2015-05-31'),
('harsh',29,8989562343,'2016-03-31'),
('deep',26,8989562344,'2015-03-11'),
('akshay',21,8989562345,'2019-03-31'),
('minar',25,9921141365,'2013-03-31'),
('kaushal',24,987456310,'2013-02-22');



create table DEPT
(
DeptId int NOT NULL auto_increment,
EMPID int not null ,
DeptNAME varchar(50),
primary key(DeptId),
FOREIGN KEY (EMPID)
REFERENCES EmployeeData (id)  
);

insert into DEPT(EMPID,DeptNAME)
value
(1,'HR'),
(2,'OPERATION'),
(3,'IT'),
(4,'CRM');

SELECT * FROM DEPT;
 drop table DEPT;
 
 select e.Name,e.age,d.DeptNAME as dept
 from EmployeeData as e 
 inner join DEPT as d on e.id=d.EMPID;
 
 select * from EmployeeData limit 3 offset 4;
 
 /*-------------------------------------------------------------*/
 
 select e.age,d.DeptNAME as dept
 from EmployeeData as e 
 inner join DEPT as d on e.id=d.EMPID;
 
 select e.Name,d.DeptNAME as dept
 from EmployeeData as e 
 inner join DEPT as d on e.id=d.EMPID;
 select * from EmployeeData limit 3 offset 4;

 SELECT id as EmployeeID, Name, Department, City, Title as Project, ClientId
FROM Employee 
INNER JOIN Projects 
ON Employee.Id = Projects.EmployeeId;