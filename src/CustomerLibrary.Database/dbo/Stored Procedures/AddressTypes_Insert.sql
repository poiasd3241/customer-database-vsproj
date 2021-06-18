CREATE PROCEDURE [dbo].[AddressTypes_Insert]
    @AddressTypeId INT,
    @Type VARCHAR(8)
AS
BEGIN
    INSERT INTO [dbo].[AddressTypes]
        ([AddressTypeId], [Type])
    VALUES
        (@AddressTypeId, @Type)
END