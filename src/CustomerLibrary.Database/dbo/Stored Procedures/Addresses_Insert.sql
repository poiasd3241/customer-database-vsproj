CREATE PROCEDURE [dbo].[Addresses_Insert]
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
    INSERT INTO [dbo].[Addresses]
        ([CustomerId], [Line], [Line2], [AddressTypeId], [City],
        [PostalCode], [State], [Country])
    VALUES
        (@CustomerId, @Line, @Line2, @AddressTypeId, @City,
            @PostalCode, @State, @Country)
END
