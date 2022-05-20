
/*------------------------INNER JOIN-------------------------------*/

SELECT Id as EmployeeID, Name, Department, City, Title as Project, ClientId
FROM Employee1 
INNER JOIN Projects 
ON Employee1.Id = Projects.EmployeeId;

select * from Projects;
select * from Employee1;
/*-------------------------right JOIN--------------------*/

SELECT Id as EmployeeID, Name, Department, City, Title as Project, ClientId
FROM Employee1 
right JOIN Projects 
ON Employee1.Id = Projects.EmployeeId;

select * from Projects;
select * from Employee1;

/*-----------------------------------left JOIN-----------------------------*/

SELECT Id as EmployeeID, Name, Department, City, Title as Project, ClientId
FROM Employee1 
left JOIN Projects 
ON Employee1.Id = Projects.EmployeeId;
select * from Projects;
select * from Employee1;
/*----------------------------------Cross Self Join--------------------------*/

SELECT P.Title as Project, I.StartDate as ID
FROM projects P
CROSS JOIN projects I;	
select * from Projects;
select * from Employee1;
/*-----------------------------CROSS JOIN------------------------------------*/

SELECT Employee1.Id as EmployeeId, Name, Department, City, Title as Project
FROM Employee1 
CROSS JOIN Projects;



select * from Projects;
select * from Employee1;

