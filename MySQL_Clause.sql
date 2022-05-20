SELECT MIN(Age) AS Min_AGE FROM Employee1;

SELECT Department, COUNT(*) AS Total_Employees 
FROM Employee1
GROUP BY Department;

SELECT (Salary) AS S
FROM Employee1;

SELECT MIN(Salary) AS Min_Salary
FROM Employee1
WHERE Gender = 'Male';  

SELECT DISTINCT Name,Department
FROM Employee1;

      

