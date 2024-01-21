use hotel_management;

INSERT INTO Hotel (Hotel_ID, Contact_no, Email_ID, Website, Room_Capacity, Star_Rating, Address, No_of_Employees)
VALUES
(1, '123-456-7890', 'hotel1@example.com', 'www.hotel1.com', 200, 4, '123 Main St, City1', 50),
(2, '234-567-8901', 'hotel2@example.com', 'www.hotel2.com', 150, 3, '456 Elm St, City2', 40),
(3, '345-678-9012', 'hotel3@example.com', 'www.hotel3.com', 300, 5, '789 Oak St, City3', 60),
(4, '456-789-0123', 'hotel4@example.com', 'www.hotel4.com', 250, 4, '012 Pine St, City4', 55),
(5, '567-890-1234', 'hotel5@example.com', 'www.hotel5.com', 180, 3, '345 Cedar St, City5', 45),
(6, '678-901-2345', 'hotel6@example.com', 'www.hotel6.com', 220, 4, '678 Birch St, City6', 48);

INSERT INTO HotelChains (HC_ID, HC_Name, HC_Address, phone_number)
VALUES
(1, 'Chain1', '123 Chain St, Chain City1', 111-111-1111),
(2, 'Chain2', '456 Chain St, Chain City2', 222-222-2222),
(3, 'Chain3', '789 Chain St, Chain City3', 333-333-3333),
(4, 'Chain4', '012 Chain St, Chain City4', 444-444-4444),
(5, 'Chain5', '345 Chain St, Chain City5', 555-555-5555),
(6, 'Chain6', '678 Chain St, Chain City6', 666-666-6666);

INSERT INTO Amenities (Amenity_ID, A_Name, Capacity, No_of_Employees, Availability, Charges)
VALUES
(1, 'Pool', 100, 3, 'Available', 20.00),
(2, 'Gym', 50, 2, 'Available', 15.00),
(3, 'Spa', 30, 4, 'Available', 30.00),
(4, 'Restaurant', 200, 10, 'Available', 25.00),
(5, 'Wi-Fi', 0, 1, 'Available', 0.00),
(6, 'Parking', 0, 2, 'Available', 10.00);

INSERT INTO Guest (Guest_ID, Guest_Name, Phone_no, G_address, G_DOB, G_identity_proof, G_gender, G_email, G_age)VALUES
(1, 'John Smith', '987-654-3210', '123 Main Street, Suite 101, City1', '1990-01-15', 'Passport', 'Male', 'john.smith@example.com', 33),
(2, 'Emily Davis', '876-543-2109', '456 Elm Avenue, Apt 202, City2', '1985-03-20', 'Driver\'s License', 'Female', 'emily.davis@example.com', 38),
(3, 'Michael Johnson', '765-432-1098', '789 Oak Drive, Unit 303, City3', '1998-07-05', 'Passport', 'Male', 'michael.johnson@example.com', 25),
(4, 'Sophia Wilson', '654-321-0987', '12 Pine Road, Apartment 405, City4', '1980-12-10', 'ID Card', 'Female', 'sophia.wilson@example.com', 43),
(5, 'Daniel Brown', '543-210-9876', '345 Cedar Lane, Building B, City5', '1995-04-25', 'Driver\'s License', 'Male', 'daniel.brown@example.com', 28),
(6, 'Olivia Lee', '432-109-8765', '678 Birch Street, #501, City6', '1989-09-15', 'Passport', 'Female', 'olivia.lee@example.com', 34);

INSERT INTO Rooms (RoomNumber, Room_Status, Room_Price, No_of_Guests)
VALUES
(101, 'Available', 5000.00, 2),
(102, 'Available', 7200.00, 2),
(103, 'Occupied', 5150.00, 3),
(104, 'Available', 5110.00, 2),
(105, 'Occupied', 6130.00, 3),
(106, 'Available', 7995.00, 2);

INSERT INTO Reservations (Reservation_ID, Guest_ID, Room_ID, No_of_Guests, No_of_Rooms, Check_in, Check_out, Bill_Amount)
VALUES
(1, 1, 101, 2, 1, '2023-10-15', '2023-10-20', 5500.00),
(2, 2, 102, 2, 1, '2023-11-01', '2023-11-05', 6480.00),
(3, 3, 103, 3, 1, '2023-11-10', '2023-11-15', 7750.00),
(4, 4, 104, 2, 1, '2023-12-01', '2023-12-05', 8440.00),
(5, 5, 105, 3, 1, '2023-12-10', '2023-12-15', 9650.00),
(6, 6, 106, 2, 1, '2024-01-05', '2024-01-10', 1475.00);

INSERT INTO Feedback (Guest_ID, Feedback_ID, Reservation_ID, F_Remarks)
VALUES
(1, 1, 1, 'Great experience!'),
(2, 2, 2, 'Excellent service and amenities.'),
(3, 3, 3, 'Loved the food and ambiance.'),
(4, 4, 4, 'Clean and comfortable rooms.'),
(5, 5, 5, 'Friendly staff, but room was small.'),
(6, 6, 6, 'Good value for money.');


INSERT INTO Invoice (Invoice_ID, Guest_ID, Bill_Amount, Additional_Charges, Total_Amount, Invoice_date)
VALUES
(1, 1, 5500.00, 50.00, 5550.00, '2023-10-20'),
(2, 2, 6480.00, 45.00, 6525.00, '2023-11-05'),
(3, 3, 7750.00, 75.00, 7825.00, '2023-11-15'),
(4, 4, 8440.00, 40.00, 8480.00, '2023-12-05'),
(5, 5, 9650.00, 60.00, 9710.00, '2023-12-15'),
(6, 6, 3475.00, 50.00, 3525.00, '2023-01-10');

INSERT INTO HotelEvents (Event_ID, Occasion, Venue, No_of_People, Event_date, Event_duration)
VALUES
(1, 'Wedding', 'Banquet Hall', 150, '2023-11-05', '18:00:00'),
(2, 'Conference', 'Meeting Room', 50, '2023-12-10', '09:00:00'),
(3, 'Birthday Party', 'Poolside', 80, '2024-01-15', '16:00:00'),
(4, 'Corporate Event', 'Grand Ballroom', 200, '2024-02-20', '12:00:00'),
(5, 'Anniversary Celebration', 'Restaurant', 60, '2024-03-25', '19:00:00'),
(6, 'Family Reunion', 'Garden', 100, '2024-04-30', '14:00:00');

INSERT INTO Department (Dep_ID, Dep_Name, No_of_Employees)
VALUES
(1, 'Front Desk', 10),
(2, 'Housekeeping', 20),
(3, 'Restaurant', 15),
(4, 'Maintenance', 8),
(5, 'Sales and Marketing', 12),
(6, 'Accounting', 7);

INSERT INTO Employees (Emp_ID, Emp_Name, Emp_DOB, Emp_Address, Emp_Phone, Designation, Department, Dep_ID)
VALUES
(1, 'John Johnson', '1990-05-10', '123 Main Street, Suite 101, City1', '111-222-3333', 'Manager', 'Front Desk', 1 ),
(2, 'Emily Davis', '1985-08-20', '456 Elm Avenue, Apt 202, City2', '222-333-4444', 'Supervisor', 'Housekeeping', 2),
(3, 'Michael Smith', '1992-03-15', '789 Oak Drive, Unit 303, City3', '333-444-5555', 'Chef', 'Restaurant', 3),
(4, 'Sophia Wilson', '1987-12-05', '12 Pine Road, Apartment 405, City4', '444-555-6666', 'Technician', 'Maintenance', 4),
(5, 'Daniel Brown', '1995-06-25', '345 Cedar Lane, Building B, City5', '555-666-7777', 'Sales Manager', 'Sales and Marketing', 5),
(6, 'Olivia Lee', '1991-09-10', '678 Birch Street, #501, City6', '666-777-8888', 'Accountant', 'Accounting', 6);


INSERT INTO Housekeeping (Emp_ID, HK_ID, Dep_ID, RoomNumber, HK_Date, HK_Time, HK_Remarks)
VALUES
(2, 1, 2, 101, '2023-10-20', '10:00:00', 'Room cleaned and towels replaced.'),
(2, 2, 2, 102, '2023-11-05', '11:30:00', 'Room cleaned and beds made.'),
(2, 3, 2, 103, '2023-11-15', '09:15:00', 'Room cleaned and bathroom sanitized.'),
(2, 4, 2, 104, '2023-12-05', '10:45:00', 'Room cleaned and amenities restocked.'),
(2, 5, 2, 105, '2023-12-15', '14:00:00', 'Room cleaned and floor vacuumed.'),
(2, 6, 2, 106, '2024-01-10', '12:30:00', 'Room cleaned and trash emptied.');


INSERT INTO Payment (Transaction_ID, Guest_ID, Mode_of_Payment, Invoice_ID, Total_Amount, Transaction_Date)
VALUES
(1, 1, 'Credit Card', 1, 5550.00, '2023-10-20'),
(2, 2, 'Cash', 2, 6525.00, '2023-11-05'),
(3, 3, 'Credit Card', 3, 7825.00, '2023-11-15'),
(4, 4, 'Debit Card', 4, 8480.00, '2023-12-05'),
(5, 5, 'Cash', 5, 9710.00, '2023-12-15'),
(6, 6, 'Credit Card', 6, 3525.00, '2024-01-10');

INSERT INTO Inventory (Item_ID, Product, Quantity_Need, Quantity_Available)
VALUES
(1, 'Towels', 200, 250),
(2, 'Toiletries', 300, 350),
(3, 'Bed Linens', 100, 120),
(4, 'Cleaning Supplies', 50, 60),
(5, 'Kitchen Utensils', 80, 90),
(6, 'Toothpaste', 150, 160);

INSERT INTO Suppliers (Supplier_ID, Supplier_Name, Item_ID, Supplier_Contact, Supplier_Address)VALUES
(1, 'Global Suppliers Inc.', 1, '111-111-1111', '123 Business Park Avenue, Supplier City1'),
(2, 'Quality Products Co.', 2, '222-222-2222', '456 Commerce Street, Supplier City2'),
(3, 'Supreme Distributors Ltd.', 3, '333-333-3333', '789 Industrial Road, Supplier City3'),
(4, 'Greenway Essentials', 4, '444-444-4444', '012 Supply Avenue, Supplier City4'),
(5, 'Alliance Merchants', 5, '555-555-5555', '345 Trade Boulevard, Supplier City5'),
(6, 'Smart Supplies Solutions', 6, '666-666-6666', '678 Manufacturing Drive, Supplier City6');

INSERT INTO Emp_Schedule (Out_Time, Schedule_ID, In_Time, Emp_ID, Attendance, Days_Missed, Shift)
VALUES
('17:00:00', 1, '09:00:00', 1, 'Present', 0, 'Morning'),
('16:30:00', 2, '08:30:00', 2, 'Present', 0, 'Morning'),
('12:00:00', 3, '04:00:00', 3, 'Present', 1, 'Evening'),
('17:30:00', 4, '09:30:00', 4, 'Present', 0, 'Morning'),
('15:00:00', 5, '07:30:00', 5, 'Present', 0, 'Morning'),
('13:00:00', 6, '03:30:00', 6, 'Present', 0, 'Evening');

INSERT INTO BasicRoom (RoomNumber)
VALUES
(101),
(104),
(106);

INSERT INTO DeluxeRoom (RoomNumber)
VALUES
(102),
(103),
(105);

INSERT INTO Uses (Guest_ID, U_ID, Amenity_ID, Charges)
VALUES
(1, 1, 1, 20.00),
(2, 2, 2, 15.00),
(3, 3, 3, 30.00),
(4, 4, 4, 25.00),
(5, 5, 5, 0.00),
(6, 6, 6, 10.00);
