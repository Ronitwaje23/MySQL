DELIMITER $$
CREATE FUNCTION Calculate_Age
(
 Age date
)
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE TodayDate DATE;
    SELECT CURRENT_DATE() INTO TodayDate;
    RETURN YEAR(TodayDate) - YEAR(Age);
END$$
DELIMITER ;
/* CREATE TABLE Employee
(
 EMP_Id int NOT NULL AUTO_INCREMENT,
  Name VARCHAR(50),
  Salary INT,
  DOB Date,
  PRIMARY KEY (EMP_Id) 
);
insert into Employee (Name, salary, DOB) values
('Dhoni', 8000000.00, '2005-07-25'),
('Dawan', 5000000.00, '2008-03-22'),
('Smrithi', 3000000.00, '2018-05-15'),
('kaur', 2000000.00, '2016-02-03'),
('Sadvitha', 5000000.00, '2019-05-28');*/

SELECT EMP_Id, Name, Salary, DOB,
Calculate_Age(DOB) AS Age FROM Employee;

SELECT EMP_Id, Name, Salary, DOB, Calculate_Age(DOB) AS Age 
FROM Employee
WHERE Calculate_Age(DOB) > 10;