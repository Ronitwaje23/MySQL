Create schema AnimalsDB
use AnimalsDB
CREATE TABLE pet
 (name VARCHAR(20), 
 owner VARCHAR(20),
 species VARCHAR(20),
 sex CHAR(1),
 birth DATE,
 death DATE);
 select * from pet
 Insert into pet values (name,owner,species,sex,birth,death)
 ("Fluffy",Akash,cat,f,2017-02-04,),
 ('Shero',Ayushi,Dog,m,2010-11-03,),
 ('Doogu',sagar,Dog,m,2019-04-12,),
 ('BOB',Nisha,Cat,m,2017-05-21,),
 ('oggy',VJ,Rabbit,m,2018-12-12,);
 INSERT INTO pet (name,owner,species,sex,birth,death) VALUES ('Fluffy','Akash','cat','f','2017-02-04','2022-05-05');
 INSERT INTO pet (name,owner,species,sex,birth,death) VALUES ('Shero','Ayushi','Dog','m','2010-11-03','2022-04-21'),
 ('Doogu','sagar','Dog','m','2019-04-12','2022-04-21'),
 ('BOB','Nisha','Cat','m','2017-05-21','2022-04-21'),
 ('oggy','VJ','Rabbit','m','2018-12-12','2022-04-21');
 SELECT * FROM pet
    WHERE species='Dog'AND sex='m'
SELECT * FROM pet
WHERE NOT death ='2022-05-05';