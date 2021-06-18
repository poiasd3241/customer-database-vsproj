CREATE PROCEDURE [dbo].[AddressTypes_Select]
    @AddressTypeId INT
AS
BEGIN
    SELECT *
    FROM [dbo].[AddressTypes]
    WHERE [AddressTypeId] = @AddressTypeId
END