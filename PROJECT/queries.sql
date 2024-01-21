use hotel_management;

SELECT Emp_Name FROM Employees WHERE Department = 'Front Desk';

SELECT MAX(Room_Price) FROM Rooms WHERE Room_Status = 'Available';

SELECT DISTINCT Guest.Guest_Name
FROM Guest
JOIN Feedback ON Guest.Guest_ID = Feedback.Guest_ID;

SELECT Occasion, Event_date
FROM HotelEvents
WHERE Event_date > CURDATE();

SELECT Guest.Guest_Name, Reservations.Room_ID, Reservations.Bill_Amount
FROM Guest
JOIN Reservations ON Guest.Guest_ID = Reservations.Guest_ID;
