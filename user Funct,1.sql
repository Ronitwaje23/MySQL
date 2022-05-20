DELIMITER $$
CREATE FUNCTION isEligible(
age INT
)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
IF age >= 18 THEN
RETURN ("you are eligible to vote");
ELSE
RETURN ("you are not eligible to vote");
END IF;
END$$
DELIMITER ;

SELECT isEligible(17);

drop function isEligible;


