USE Northwind
GO

ALTER FUNCTION TongTienMuahangCuaKhachHang(@id nvarchar(10))
RETURNS float
AS
BEGIN
	DECLARE @sum float
	SELECT @sum = SUM(UnitPrice * Quantity-(UnitPrice * Quantity)*Discount)
	FROM [Order Details], Orders
	WHERE [Order Details].OrderID = Orders.OrderID AND CustomerID = @id
	RETURN @sum
END
GO

PRINT dbo.TongTienMuahangCuaKhachHang(N'VINET')
GO