select * from Employee1;

DELIMITER //

CREATE PROCEDURE Demo_Procedure()
BEGIN
	SELECT *  FROM Employee1 ;
END //

DELIMITER ;

CALL Demo_Procedure();


DELIMITER &&  
CREATE PROCEDURE Get_Max_Salary (IN var INT)  
BEGIN  
    SELECT * FROM Employee1;  
    SELECT max(Salary) AS Max_salary FROM Employee1;    
END &&  
DELIMITER ;  

Call Get_Max_Salary(20); 