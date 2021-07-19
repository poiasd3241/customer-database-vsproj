CREATE PROCEDURE [dbo].[Addresses_Update]
    @AddressId INT,
    @CustomerId INT,
    @Line NVARCHAR(100),
    @Line2 NVARCHAR(100),
    @AddressTypeId INT,
    @City NVARCHAR(50),
    @PostalCode VARCHAR(6),
    @State NVARCHAR(20),
    @Country NVARCHAR(13)
AS
BEGIN
    UPDATE [dbo].[Addresses]
    SET [CustomerId] = @CustomerId,
        [Line] = @Line,
        [Line2] = @Line2,
        [AddressTypeId] = @AddressTypeId,
        [City] = @City,
        [PostalCode] = @PostalCode,
        [State]=@State,
        [Country]=@Country
    WHERE [AddressId] = @AddressId
END