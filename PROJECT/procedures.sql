use hotel_management;

DELIMITER //
CREATE PROCEDURE CreateReservation(
    IN p_GuestID INT,
    IN p_RoomID INT,
    IN p_NoOfGuests INT,
    IN p_NoOfRooms INT,
    IN p_CheckIn DATE,
    IN p_CheckOut DATE
)
BEGIN
    -- Insert reservation data into the Reservations table
    INSERT INTO Reservations (Guest_ID, Room_ID, No_of_Guests, No_of_Rooms, Check_in, Check_out)
    VALUES (p_GuestID, p_RoomID, p_NoOfGuests, p_NoOfRooms, p_CheckIn, p_CheckOut);
END//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE AddFeedback(
    IN p_GuestID INT,
    IN p_ReservationID INT,
    IN p_FeedbackRemarks VARCHAR(255)
)
BEGIN
    -- Insert feedback data into the Feedback table
    INSERT INTO Feedback (Guest_ID, Reservation_ID, F_Remarks)
    VALUES (p_GuestID, p_ReservationID, p_FeedbackRemarks);
END//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE CheckInGuest(
    IN p_RoomNumber INT
)
BEGIN
    -- Update room status to 'Occupied' in the Rooms table
    UPDATE Rooms
    SET Room_Status = 'Occupied'
    WHERE RoomNumber = p_RoomNumber;
END//
DELIMITER ;


DELIMITER //
CREATE PROCEDURE AddEmployeeSchedule(
    IN p_EmpID INT,
    IN p_InTime TIME,
    IN p_OutTime TIME,
    IN p_Attendance VARCHAR(10),
    IN p_DaysMissed INT,
    IN p_Shift VARCHAR(20)
)
BEGIN
    -- Insert employee schedule into the Emp_Schedule table
    INSERT INTO Emp_Schedule (Emp_ID, In_Time, Out_Time, Attendance, Days_Missed, Shift)
    VALUES (p_EmpID, p_InTime, p_OutTime, p_Attendance, p_DaysMissed, p_Shift);
END//
DELIMITER ;



DELIMITER //
CREATE PROCEDURE AddAmenitiesToReservation(
    IN p_ReservationID INT,
    IN p_AmenityID INT
)
BEGIN
    DECLARE p_AmenityCharge DECIMAL(10, 2);

    -- Get the charges for the specified amenity
    SELECT Charges INTO p_AmenityCharge
    FROM Amenities
    WHERE Amenity_ID = p_AmenityID;

    -- Update the bill amount in the Invoice table
    UPDATE Invoice
    SET Additional_Charges = Additional_Charges + p_AmenityCharge
    WHERE Reservation_ID = p_ReservationID;
END//
DELIMITER ;
