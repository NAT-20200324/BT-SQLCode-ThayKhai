USE Northwind
GO

ALTER FUNCTION SLDonHangCuaKhachHang1(@tenCongTy nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @soLuong int
	SELECT @soLuong = COUNT(OrderID)
	FROM  Customers,Orders
	WHERE Orders.CustomerID = Customers.CustomerID AND Customers.CompanyName = @tenCongTy
	RETURN @soLuong
END 
GO

PRINT dbo.SLDonHangCuaKhachHang1(N'Ernst Handel')
GO

PRINT dbo.SLDonHangCuaKhachHang1(N'Alfreds Futterkiste')