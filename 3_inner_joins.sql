SELECT c.CustomerID, concat(c.FirstName, " ", c.LastName) AS FullName, o.OrderID, o.Cost, m.MenuName, mi.CourseName, mi.StarterName
FROM Customers as c 
INNER JOIN Orders as o ON c.CustomerID = o.customerID
INNER JOIN Menu as m ON o.MenuID = m.MenuID
INNER JOIN MenuItems as mi ON m.MenuItemID = mi.MenuItemID
WHERE o.Cost >150
ORDER BY o.Cost;