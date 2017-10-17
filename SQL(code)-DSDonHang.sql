USE Northwind
GO
DROP VIEW DSDonHang
GO
CREATE VIEW DSDonHang
AS
SELECT      dbo.[Order Details].OrderID,SUM(UnitPrice*Quantity*(1-Discount)) AS TongTienDonHang
FROM         dbo.[Order Details]
GROUP BY	[Order Details].OrderID
GO