USE Northwind
GO

CREATE FUNCTION SLKhachHangCuaQuocGia(@tenQG nvarchar(50))
RETURNS int
AS
BEGIN
	DECLARE @soLuong int
	SELECT @soLuong = COUNT(CustomerID)
	FROM Customers
	WHERE Country = @tenQG
	RETURN @soLuong
END 
GO

PRINT dbo.SLKhachHangCuaQuocGia(N'Germany')
GO