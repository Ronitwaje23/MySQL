create database IPL
use IPL
create table PointTable2022
(
ID int identity (1,1), 
Team varchar(100),
match int,
win int,
loss int,
points int,
NRR float
);
select * from PointTable2022
insert into  PointTable2022(team,match,win,loss,points,NRR) values
('Gujrat Titan', 6, 5, 1, 10, +0.395),
('Rajastan Royals', 6, 4, 2, 8,+0.380),
('Lucknow Super Joints', 6, 4, 2, 8, +0.296),
('Royal Challanger Banglore', 6, 4, 2, 8, +0.142),
('SRH', 6, 4, 2, 8, -0.077),
('KKR', 7, 3, 4, 6, +0.160),
('PBKS',6, 3, 3, 6,+0.109),
('DC', 5, 2, 3, 4, +0.219),
('CSK', 6, 1, 5, 2,-0.638),
('Mumbai Indians', 6, 0, 6, 0, -1.048);

