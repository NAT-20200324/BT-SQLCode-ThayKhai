USE Northwind
GO

ALTER FUNCTION SLDonHangCuaKhachHang2(@tenQG nvarchar(50), @tenThanhPho nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @soLuong int
	SELECT @soLuong = COUNT(OrderID)
	FROM  Customers,Orders
	WHERE Orders.CustomerID = Customers.CustomerID AND Customers.Country = @tenQG AND Customers.City = @tenThanhPho
	RETURN @soLuong
END 
GO

PRINT dbo.SLDonHangCuaKhachHang2(N'Germany',N'Berlin')
GO