CREATE DATABASE Cursors_db;


CREATE TABLE GetVatsaCursor(  
  C_ID INT PRIMARY KEY AUTO_INCREMENT,  
  c_name VARCHAR(50),  
  c_address VARCHAR(200)  
);  
  
CREATE TABLE Vbackupdata(  
  C_ID INT,  
  c_name VARCHAR(50),  
  c_address VARCHAR(200)  
); 

desc GetVatsaCursor;

INSERT INTO GetVatsaCursor(c_name, c_address) VALUES('Test', '132, Vatsa Colony'),  
  ('Admin', '133, Vatsa Colony'),  
  ('Vatsa', '134, Vatsa Colony'),  
  ('Onkar', '135, Vatsa Colony'),  
  ('Rohit', '136, Vatsa Colony'),  
  ('Simran', '137, Vatsa Colony'),  
  ('Jashmin', '138, Vatsa Colony'),  
  ('Anamika', '139, Vatsa Colony'),  
  ('Radhika', '140, Vatsa Colony');
  
  
SELECT * FROM GetVatsaCursor;  
SELECT * FROM Vbackupdata; 

/*--------------------------------Create Curser---------------------------------*/

delimiter //  
CREATE PROCEDURE firstCurs()  
BEGIN  
DECLARE d INT DEFAULT 0;  
DECLARE c_id INT;  
DECLARE c_name, c_address VARCHAR(20);  
  
DECLARE Get_cur CURSOR FOR SELECT * FROM GetVatsaCursor ;  
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'  
SET d = 1;  
DECLARE CONTINUE HANDLER FOR SQLSTATE '23000'  
SET d = 1;  
  
OPEN Get_cur;  
lbl:
 LOOP  
IF d = 1 THEN  
LEAVE lbl;  
END IF;  
IF NOT d = 1 THEN  
  
FETCH Get_cur INTO c_id, c_name, c_address;  
INSERT INTO Vbackupdata VALUES(c_id, c_name, c_address);  
END IF;  
END LOOP;  
  
CLOSE Get_cur;  
END;  
// 
/*------------------------------call the Curser---------------------------------*/

CALL Cursors_db.firstCurs();

SELECT * FROM Vbackupdata; 

