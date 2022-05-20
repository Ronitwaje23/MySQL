CREATE DATABASE triggers;

USE triggers;

Show Tables;


create table customers

(cust_id int, age int, name varchar(30));


                                      -- before insert trigger

delimiter // 

create trigger age_verify

before insert on customers

for each row

if new.age < 0 then set new.age = 0;

end if;//

Delimiter ;


insert into customers

values (101,27,'Neelesh'),

(102,-40,'Mayank'),

(103,32,'Jitesh'),

(104,-32,'Shikha');


select * from customers;

drop table customers;

-- after insert trigger 

create table customer1(

id int auto_increment primary key,

name varchar(40) not null,

email varchar(30),

birthdate date);




create table message(

id int auto_increment,

messageId int,

message varchar(300) not null,

primary key(id,messageId));


Delimiter //

create trigger check_null_dob

after insert on customer1

for each row

begin 

if new.birthdate is null then

insert into message (messageId, message)

values(new.id, concat('Hi ', new.name, ', please update your date of birth.'));

end if;

end //

delimiter ;


insert into customer1(name,email,birthdate)

values("Nancy","nancy@abc.com",NULL),

("James","james@xyz.com","1998-11-16"),

("Javed","javed@qwe.com","1997-08-20"),

("Ankit","ankyy@rty.com",NULL);


select * from customer1;

SELECT * FROM message;

drop table customer1;

drop table message;

/*---------------------BEFORE UPDATE ------------------------------*/

CREATE TABLE sales_info (  
    id INT AUTO_INCREMENT,  
    product VARCHAR(100) NOT NULL,  
    quantity INT NOT NULL DEFAULT 0,  
    Year_ SMALLINT NOT NULL,  
    CHECK(Year_ BETWEEN 2000 and 2050),  
    CHECK (quantity >=0),  
    UNIQUE(product, Year_),  
    PRIMARY KEY(id)  
);


INSERT INTO sales_info(product, quantity, Year_)  
VALUES  
    ('2003 Maruti Suzuki',110, 2020),  
    ('2015 Avenger', 120,2020),  
    ('2018 Honda Shine', 150,2020),  
    ('2014 Apache', 150,2020);  
    
    
DELIMITER $$  
  
CREATE TRIGGER before_update_salesInfo  
BEFORE UPDATE  
ON sales_info FOR EACH ROW  
BEGIN  
    DECLARE error_msg VARCHAR(255);  
    SET error_msg = ('The new quantity cannot be greater than 2 times the current quantity');  
    IF new.quantity > old.quantity * 2 THEN  
    SIGNAL SQLSTATE '45000'   
    SET MESSAGE_TEXT = error_msg;  
    END IF;  
END $$  
  
DELIMITER ; 


select * from sales_info;
UPDATE sales_info SET quantity = 125 WHERE id = 2;
UPDATE sales_info SET quantity = 600 WHERE id = 2;  


/*---------------------AFTER UPDATE ------------------------------*/

 CREATE TABLE students(    
    id int NOT NULL AUTO_INCREMENT,    
    name varchar(45) NOT NULL,    
    class int NOT NULL,    
    email_id varchar(65) NOT NULL,    
    PRIMARY KEY (id)    
); 

INSERT INTO students (name, class, email_id)     
VALUES ('Stephen', 6, 'stephen@javatpoint.com'),   
('Bob', 7, 'bob@javatpoint.com'),   
('Steven', 8, 'steven@javatpoint.com'),   
('Alexandar', 7, 'alexandar@javatpoint.com');  

CREATE TABLE students_log(    
    user varchar(45) NOT NULL,    
    descreptions varchar(65) NOT NULL  
);


DELIMITER $$  
  
CREATE TRIGGER after_update_studentsInfo  
AFTER UPDATE  
ON students FOR EACH ROW  
BEGIN  
    INSERT into students_log VALUES (user(),   
    CONCAT('Update Student Record ', OLD.name, ' Previous Class :',  
    OLD.class, ' Present Class ', NEW.class));  
END $$  
  
DELIMITER ;
select * from students;
UPDATE students SET class = 8 where Id =1;
select * from students_log;
UPDATE students SET class = class +1;

/*-------------------------BEFORE DELETE Trigger-------------------------*/


CREATE TABLE salaries (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0  
);  


INSERT INTO salaries (emp_num, valid_from, amount)  
VALUES  
    (102, '2020-01-10', 45000),  
    (103, '2020-01-10', 65000),  
    (105, '2020-01-10', 55000),  
    (107, '2020-01-10', 70000),  
    (109, '2020-01-10', 40000);
    
    
    CREATE TABLE salary_archives
    (  
    id INT PRIMARY KEY AUTO_INCREMENT,  
    emp_num INT,  
    valid_from DATE NOT NULL,  
    amount DEC(18 , 2 ) NOT NULL DEFAULT 0,  
    deleted_time TIMESTAMP DEFAULT NOW()  
);


DELIMITER $$  
  
CREATE TRIGGER before_delete_salaries  
BEFORE DELETE  
ON salaries FOR EACH ROW  
BEGIN  
    INSERT INTO salary_archives (emp_num, valid_from, amount)  
    VALUES(OLD. emp_num, OLD.valid_from, OLD.amount);  
END$$   
  
DELIMITER ;
select * from salaries;
select * from salary_archives;
DELETE FROM salaries WHERE emp_num = 105;

/*---------------------------------AFTER DELETE Trigger----------------------------------*/


CREATE TABLE salaries1 (  
    emp_num INT PRIMARY KEY,  
    valid_from DATE NOT NULL,  
    amount DEC(8 , 2 ) NOT NULL DEFAULT 0  
); 

INSERT INTO salaries1 (emp_num, valid_from, amount)  
VALUES  
    (102, '2020-01-10', 45000),  
    (103, '2020-01-10', 65000), 
    (105, '2020-01-10', 55000),
    (107, '2020-01-10', 70000),  
    (109, '2020-01-10', 40000); 
    
CREATE TABLE total_salary_budget
(  
    total_budget DECIMAL(10,2) NOT NULL  
);  


INSERT INTO total_salary_budget (total_budget)  
SELECT SUM(amount) FROM salaries1;


DELIMITER $$  
  
CREATE TRIGGER after_delete_salaries  
AFTER DELETE  
ON salaries1 FOR EACH ROW  
BEGIN  
   UPDATE total_salary_budget SET total_budget = total_budget - old.amount;  
END$$   
  
DELIMITER ; 

DELETE FROM salaries1 WHERE emp_num = 105;

SELECT * FROM total_salary_budget; 
SELECT * FROM salaries1; 

DROP TRIGGER after_delete_salaries;

