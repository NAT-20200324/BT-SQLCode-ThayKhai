USE Northwind
GO
DROP VIEW DSDonHangCuaKhachHangAnhMy2
GO
CREATE VIEW DSDonHangCuaKhachHangAnhMy2
AS
SELECT TOP(100)PERCENT *
FROM Customers
WHERE (Country=N'USA') OR (Country=N'UK')
ORDER BY CustomerID
GO