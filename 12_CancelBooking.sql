# Create Procedure
/*
DELIMITER //
CREATE PROCEDURE CancelBooking(IN bkid INT)
BEGIN
	DELETE FROM Bookings WHERE BookingID = bkid;

	DROP VIEW IF EXISTS DeleteView;
    
	CREATE VIEW DeleteView AS
	SELECT CONCAT('Booking ', BookingID, ' cancelled') AS Confirmation, BookingID
	FROM Bookings;
    
	SELECT Confirmation FROM DeleteView WHERE BookingID = bkid;
    SELECT * FROM Bookings;

END //
Delimiter ;
*/

CALL CancelBooking(9);

#Insert BookingID 9 
/*
INSERT INTO Bookings (BookingID, Date, Time, TableNo, NumberOfGuests) VALUES
(9, '2021-11-13', '17:00:00', 7, 5);
SELECT * FROM Bookings;
*/