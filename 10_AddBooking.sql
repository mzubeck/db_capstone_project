#create procedure
/*
DELIMITER //
CREATE PROCEDURE AddBooking (IN days DATE, IN times TIME, IN table_no INT, IN no_guests INT)
BEGIN 

INSERT INTO Bookings (Date, Time, TableNo, NumberOfGuests) VALUES 
(days, times, table_no, no_guests);

DROP VIEW IF EXISTS confirm;
CREATE VIEW confirm AS
SELECT 'New booking added' AS Confirmation, Date
FROM Bookings;
SELECT Confirmation FROM confirm WHERE Date = days;
END //
DELIMITER ;
*/

#bookingID is on auto_increment so do not need to add
CALL AddBooking('2021-11-16', '16:00:00', 3, 4);
SELECT * FROM Bookings;