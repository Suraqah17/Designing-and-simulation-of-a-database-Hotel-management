create database hotel_management;
use hotel_management;

CREATE TABLE Hotel (
    Hotel_ID INT PRIMARY KEY,
    Contact_no VARCHAR(20),
    Email_ID VARCHAR(100),
    Website VARCHAR(100),
    Room_Capacity INT,
    Star_Rating INT,
    Address VARCHAR(255),
    No_of_Employees INT
);

CREATE TABLE HotelChains (
    HC_ID INT PRIMARY KEY,
    HC_Name VARCHAR(100),
    HC_Address VARCHAR(255),
    phone_number INT
);

CREATE TABLE Amenities (
    Amenity_ID INT PRIMARY KEY,
    A_Name VARCHAR(100),
    Capacity INT,
    No_of_Employees INT,
    Availability VARCHAR(10),
    Charges DECIMAL(10, 2)
);

CREATE TABLE Guest (
    Guest_ID INT PRIMARY KEY,
    Phone_no VARCHAR(20),
    G_address VARCHAR(255),
    G_DOB DATE,
    G_identity_proof VARCHAR(50),
    G_gender VARCHAR(10),
    G_email VARCHAR(100),
    G_age INT
);

CREATE TABLE Rooms (
    RoomNumber INT PRIMARY KEY,
    Room_Status VARCHAR(20),
    Room_Price DECIMAL(10, 2),
    No_of_Guests INT
);

CREATE TABLE Reservations (
    Reservation_ID INT PRIMARY KEY,
    Guest_ID INT,
    Room_ID INT,
    No_of_Guests INT,
    No_of_Rooms INT,
    Check_in DATE,
    Check_out DATE,
    Bill_Amount DECIMAL(10, 2),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Room_ID) REFERENCES Rooms(RoomNumber)
);

CREATE TABLE Feedback (
    Guest_ID INT,
    Feedback_ID INT primary key,
    Reservation_ID INT,
    F_Remarks varchar(255),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID)
);

CREATE TABLE Invoice (
    Invoice_ID INT PRIMARY KEY,
    Guest_ID INT,
    Bill_Amount DECIMAL(10, 2),
    Additional_Charges DECIMAL(10, 2),
    Total_Amount DECIMAL(10, 2),
    Invoice_date DATE,
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID)
);

CREATE TABLE HotelEvents (
    Event_ID INT PRIMARY KEY,
    Occasion VARCHAR(100),
    Venue VARCHAR(100),
    No_of_People INT,
    Event_date DATE,
    Event_duration TIME
);

CREATE TABLE Department (
    Dep_ID INT PRIMARY KEY,
    Dep_Name VARCHAR(100),
    No_of_Employees INT
);

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Emp_DOB DATE,
    Emp_Address VARCHAR(255),
    Emp_Phone VARCHAR(20),
    Designation VARCHAR(50),
    Department VARCHAR(50),
    Dep_ID INT,
    FOREIGN KEY (Dep_ID) REFERENCES Department(Dep_ID)
);


CREATE TABLE Housekeeping (
    Emp_ID INT,
    HK_ID int primary key,
    Dep_ID INT,
    RoomNumber INT,
    HK_Date DATE,
    HK_Time TIME,
    HK_Remarks TEXT,
    FOREIGN KEY (Emp_ID) REFERENCES Employees(Emp_ID),
    FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);


CREATE TABLE Payment (
    Transaction_ID INT PRIMARY KEY,
    Guest_ID INT,
    Mode_of_Payment VARCHAR(50),
    Invoice_ID INT,
    Total_Amount DECIMAL(10, 2),
    Transaction_Date DATE,
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Invoice_ID) REFERENCES Invoice(Invoice_ID)
);

CREATE TABLE Inventory (
    Item_ID INT PRIMARY KEY,
    Product VARCHAR(100),
    Quantity_Need INT,
    Quantity_Available INT
);

CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Item_ID INT,
    Supplier_Contact VARCHAR(20),
    Supplier_Address VARCHAR(255),
    FOREIGN KEY (Item_ID) REFERENCES Inventory(Item_ID)
);

CREATE TABLE Emp_Schedule (
    Out_Time TIME,
    Schedule_ID int primary key,
    In_Time TIME,
    Emp_ID INT,
    Attendance VARCHAR(10),
    Days_Missed INT,
    Shift VARCHAR(20),
    FOREIGN KEY (Emp_ID) REFERENCES Employees(Emp_ID)
);

CREATE TABLE BasicRoom (
    RoomNumber INT PRIMARY KEY,
    FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);

CREATE TABLE DeluxeRoom (
    RoomNumber INT PRIMARY KEY,
    FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);

CREATE TABLE Uses (
    Guest_ID INT,
    U_ID int primary key,
    Amenity_ID INT,
    Charges DECIMAL(10, 2),
    FOREIGN KEY (Guest_ID) REFERENCES Guest(Guest_ID),
    FOREIGN KEY (Amenity_ID) REFERENCES Amenities(Amenity_ID)
);

alter table guest add Guest_Name varchar(255);
