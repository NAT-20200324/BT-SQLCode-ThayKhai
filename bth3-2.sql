USE Northwind
GO

CREATE FUNCTION TenNhanVienDayDu(@id int)
RETURNS nvarchar(50)
AS
BEGIN
	DECLARE @fullName nvarchar(50)
	SELECT @fullName = LastName + ' ' + FirstName
	FROM Employees
	WHERE EmployeeID = @id
	RETURN @fullName
END
GO

PRINT dbo.TenNhanVienDayDu(3)
GO