CREATE PROCEDURE [dbo].[Addresses_Select]
    @AddressId INT
AS
BEGIN
    SELECT *
    FROM [dbo].[Addresses]
    WHERE [AddressId] = @AddressId
END