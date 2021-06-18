CREATE PROCEDURE [dbo].[Customers_Select]
    @CustomerId INT
AS
BEGIN
    SELECT *
    FROM [dbo].[Customers]
    WHERE [CustomerId] = @CustomerId
END