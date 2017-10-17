USE Northwind
GO

ALTER FUNCTION SLDonHangCuaKhachHang1(@tenQuocGia nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @soLuong int
	SELECT @soLuong = COUNT(OrderID)
	FROM  Customers,Orders
	WHERE Orders.CustomerID = Customers.CustomerID AND Customers.Country = 
	@tenQuocGia
	RETURN @soLuong
END 
GO

PRINT dbo.SLDonHangCuaKhachHang1(N'Germany')
GO