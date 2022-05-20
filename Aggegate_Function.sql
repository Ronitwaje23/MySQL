SELECT COUNT(*) FROM Employee1;

SELECT COUNT(*) AS Total_Employees FROM Employee1;

SELECT Department, COUNT(*) AS Total_Employees 
FROM Employee1
GROUP BY Department;


SELECT MIN(Age) AS Min_AGE FROM Employee1;

                      /*MIN function with GROUP by Clause*/
SELECT Department, MIN(Salary) AS Min_Salary
FROM Employee1
GROUP BY Department;

					/*MIN Function with WHERE Clause*/
SELECT MIN(Salary) AS Min_Salary
FROM Employee1
WHERE Gender = 'Male';                   
                    
                  /*  MIN-MAX Function with Numeric values */
SELECT MIN(Age) AS MIN_AGE FROM Employee1;   
SELECT MAX(Age) AS Max_AGE FROM Employee1;   
 
				/* MAX Function with GROUP by Clause*/
 SELECT Department, MAX(Salary) AS Max_Salary
FROM Employee1
GROUP BY Department;      
