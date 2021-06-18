CREATE PROCEDURE [dbo].[Customers_Insert]
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @PhoneNumber VARCHAR(15),
    @Email VARCHAR(320),
    @TotalPurchasesAmount DECIMAL(15,2)
AS
BEGIN
    INSERT INTO [dbo].[Customers]
        ([FirstName], [LastName], [PhoneNumber], [Email], [TotalPurchasesAmount])
    VALUES
        (@FirstName, @LastName, @PhoneNumber, @Email, @TotalPurchasesAmount)
END