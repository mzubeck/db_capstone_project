#Show entire bookings table
#SELECT * FROM Bookings;

#creates procedure and booking status view
/*
DELIMITER //
CREATE PROCEDURE CheckBooking(IN year_month_day DATE, IN table_number INT)
BEGIN
DROP VIEW IF EXISTS BookingStatus;

CREATE VIEW BookingStatus AS
	SELECT Date, TableNo, CONCAT('Table ', TableNo, ' is already booked') AS 'Booking'
	FROM Bookings;
    
    SELECT Booking As 'Booking Status'
    FROM BookingStatus
    WHERE Date = year_month_day AND TableNo = table_number;
END //
DELIMITER ;
*/

CALL CheckBooking('2021-11-10', 3);
