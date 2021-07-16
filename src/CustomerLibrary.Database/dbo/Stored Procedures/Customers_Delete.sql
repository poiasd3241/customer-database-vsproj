CREATE PROCEDURE [dbo].[Customers_Delete]
    @CustomerId INT
AS
BEGIN
    -- FK
    DELETE FROM [dbo].[Addresses]
	WHERE [CustomerId] = @CustomerId
	
    -- FK
	DELETE FROM [dbo].[Notes]
	WHERE [CustomerId] = @CustomerId

    DELETE FROM [dbo].[Customers]
    WHERE [CustomerId] = @CustomerId
END