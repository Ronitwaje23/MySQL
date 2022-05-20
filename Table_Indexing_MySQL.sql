CREATE INDEX EmpData
ON employee1 (Name,Gender);
SHOW INDEX FROM employee1;


SELECT * FROM employee1;


ALTER TABLE employee1
DROP INDEX EmpData;