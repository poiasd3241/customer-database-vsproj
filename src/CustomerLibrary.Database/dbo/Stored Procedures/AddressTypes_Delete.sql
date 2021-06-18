CREATE PROCEDURE [dbo].[AddressTypes_Delete]
    @AddressTypeId INT
AS
BEGIN
    DELETE FROM [dbo].[AddressTypes]
    WHERE [AddressTypeId] = @AddressTypeId
END