use hotel_management;

DELIMITER //
CREATE TRIGGER UpdateRoomStatusOnReservationCreate
AFTER INSERT ON Reservations FOR EACH ROW
BEGIN
    UPDATE Rooms
    SET Room_Status = 'Occupied'
    WHERE RoomNumber = NEW.Room_ID;
END//
DELIMITER ;


DELIMITER //
CREATE TRIGGER UpdateRoomStatusOnCheckOut
AFTER DELETE ON Reservations FOR EACH ROW
BEGIN
    UPDATE Rooms
    SET Room_Status = 'Available'
    WHERE RoomNumber = OLD.Room_ID;
END//
DELIMITER ;


DELIMITER //
CREATE TRIGGER NotifyInventoryShortage
AFTER UPDATE ON Inventory
FOR EACH ROW
BEGIN
    DECLARE threshold INT;
    SET threshold = 10;

    IF NEW.Quantity_Available < threshold THEN
        INSERT INTO InventoryShortageNotifications (Item_ID, Quantity_Available, Notification_Date)
        VALUES (NEW.Item_ID, NEW.Quantity_Available, NOW());
    END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER PreventOverbooking
BEFORE INSERT ON Reservations
FOR EACH ROW
BEGIN
    DECLARE available_rooms INT;
    SELECT COUNT(*) INTO available_rooms
    FROM Rooms
    WHERE Room_Status = 'Available';

    IF NEW.No_of_Rooms > available_rooms THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Not enough available rooms for this reservation.';
    END IF;
END;
//
DELIMITER ;



