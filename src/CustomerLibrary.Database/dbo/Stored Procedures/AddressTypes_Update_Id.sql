CREATE PROCEDURE [dbo].[AddressTypes_Update_Id]
    @Type VARCHAR(8),
    @AddressTypeId INT
AS
BEGIN
    UPDATE [dbo].[AddressTypes]
    SET [AddressTypeId] = @AddressTypeId
    WHERE [Type] = @Type
END