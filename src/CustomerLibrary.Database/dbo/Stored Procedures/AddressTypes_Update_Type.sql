CREATE PROCEDURE [dbo].[AddressTypes_Update_Type]
    @AddressTypeId INT,
    @Type VARCHAR(8)
AS
BEGIN
    UPDATE [dbo].[AddressTypes]
    SET [Type] = @Type
    WHERE [AddressTypeId] = @AddressTypeId
END