CREATE PROCEDURE [dbo].[Addresses_Update]
    @AddressId INT,
    @CustomerId INT,
    @AddressLine NVARCHAR(100),
    @AddressLine2 NVARCHAR(100),
    @AddressTypeId INT,
    @City NVARCHAR(50),
    @PostalCode VARCHAR(6),
    @State NVARCHAR(20),
    @Country NVARCHAR(13)
AS
BEGIN
    UPDATE [dbo].[Addresses]
    SET [CustomerId] = @CustomerId,
        [AddressLine] = @AddressLine,
        [AddressLine2] = @AddressLine2,
        [AddressTypeId] = @AddressTypeId,
        [City] = @City,
        [PostalCode] = @PostalCode,
        [State]=@State,
        [Country]=@Country
    WHERE [AddressId] = @AddressId
END