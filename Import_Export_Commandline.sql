SHOW VARIABLES LIKE "secure_file_priv" ;

TABLE employee1 
INTO OUTFILE 'C:/Users/ronit/Desktop/ronit/employee1.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n'; 


/*-------------------Working--------------------------*/
TABLE employeedata 
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/emp.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY ''
LINES TERMINATED BY '\n';
/*---------------------------R&D-----------------------*/

