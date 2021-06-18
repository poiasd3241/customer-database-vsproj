CREATE PROCEDURE [dbo].[Addresses_Delete]
    @AddressId INT
AS
BEGIN
    DELETE FROM [dbo].[Addresses]
    WHERE [AddressId] = @AddressId
END