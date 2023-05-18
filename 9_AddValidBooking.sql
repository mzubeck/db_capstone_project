# create procedure
/*
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN day DATE, IN table_no INT)
BEGIN
	START TRANSACTION;
	IF EXISTS (SELECT * FROM Bookings WHERE Date = day AND TableNo = table_no)            
		THEN ROLLBACK;	
		DROP VIEW IF EXISTS booking_status;
		CREATE VIEW booking_status AS
		SELECT Date, TableNo, CONCAT('Table ', TableNo, ' is already booked - booking cancelled') AS 'Booking'
		FROM Bookings;
        
		SELECT Booking As 'Booking Status'
		FROM booking_status
		WHERE Date = day AND TableNo = table_no;
    ELSE
		INSERT INTO Bookings (Date, Time, TableNo, NumberOfGuests) Values
		(day, '17:00:00', table_no, 4);
		DROP VIEW IF EXISTS booking_status;
		CREATE VIEW booking_status AS
		SELECT Date, TableNo, CONCAT('Table ', TableNo, ' is confirmed') AS 'Booking'
		FROM Bookings;
        
		SELECT Booking As 'Booking Status'
		FROM booking_status
		WHERE Date = day AND TableNo = table_no;
		COMMIT;
END IF;
SELECT * FROM Bookings;
END//
DELIMITER ;
*/

# 11/14/21 and table 3 is cancelled.  11/15/21 and table 3 is added.
CALL AddValidBooking('2021-11-14', 3);
