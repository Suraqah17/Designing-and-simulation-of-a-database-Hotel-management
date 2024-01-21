use hotel_management;

DELIMITER $$
CREATE FUNCTION CalculateAverageRoomPrice(hotelId INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE avgPrice DECIMAL(10, 2);
    SELECT AVG(Room_Price) INTO avgPrice
    FROM Rooms
    WHERE RoomNumber IN (SELECT Room_ID FROM Reservations WHERE Guest_ID = hotelId);
    RETURN avgPrice;
END;
$$
DELIMITER ;

SELECT CalculateAverageRoomPrice(4);


DELIMITER $$
CREATE FUNCTION CalculateEmployeeAge(empDOB DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE age INT;
    SELECT YEAR(CURDATE()) - YEAR(empDOB) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(empDOB, '%m%d')) INTO age;
    RETURN age;
END;
$$
DELIMITER ;

SELECT CalculateEmployeeAge('1985-08-20');

