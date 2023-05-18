#Create procedure 
/*
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bkid INT, IN days DATE)
BEGIN
	UPDATE Bookings
    SET Date = days
    WHERE BookingID = bkid;

	DROP VIEW IF EXISTS ConfirmView;
	CREATE VIEW ConfirmView AS
	SELECT CONCAT('Booking ', BookingID, ' updated') AS Confirmation, BookingID, Date
	FROM Bookings;
	SELECT Confirmation FROM ConfirmView WHERE BookingID = bkid AND Date = days;
    SELECT * FROM Bookings;
END //
DELIMITER ;

*/
#updates bookingID 9 and moves it to the 17th
CALL UpdateBooking(9, '2021-11-17');