/*
CREATE TABLE Confirmation (Confirmation VARCHAR(60));

CREATE TRIGGER AfterDeleteOrder
	AFTER DELETE
	ON Orders FOR EACH ROW
INSERT INTO Confirmation VALUES (CONCAT('Order ', OLD.OrderID, ' is cancelled.'));

CREATE PROCEDURE CancelOrder (IN order_id INT)
DELETE FROM Orders WHERE OrderID = order_id;

#OrderID 5 is present
SELECT * FROM Orders;

*/

#OrderID 5 is NOT present
#CALL CancelOrder(5);
#SELECT * FROM Orders;

#Put OrderID 5 back in
#INSERT INTO Orders (OrderID, CustomerID, StaffID, MenuID, BookingID, Date, Quantity, Cost) VALUES (5, 1, 3, 8, NULL, '2021-11-11', 5, 450);
#SELECT * FROM Orders;
