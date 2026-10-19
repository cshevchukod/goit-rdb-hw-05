USE goit_rdb_hw_03;
DROP FUNCTION IF EXISTS DivideNumbers;
DELIMITER //
CREATE FUNCTION DivideNumbers(
    num1 FLOAT,
    num2 FLOAT
)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = num1 / num2;
    RETURN result;
END //
DELIMITER ;
SELECT
    id,
    order_id,
    quantity,
    DivideNumbers(quantity, 2) AS divided_quantity
FROM order_details;