DELIMITER $$
CREATE FUNCTION Func_Square
(
 Num INT
)
RETURNS INT 
DETERMINISTIC
BEGIN
    DECLARE TotalCube INT;
    SET TotalCube = Num * Num;
    RETURN TotalCube; 
END$$
DELIMITER ;

select testdb1.Func_Square(5);