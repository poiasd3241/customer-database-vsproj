CREATE PROCEDURE [dbo].[Notes_Insert]
    @CustomerId INT,
    @Content NVARCHAR(1000)
AS
BEGIN
    INSERT INTO [dbo].[Notes]
        ([CustomerId], [Content])
    VALUES
        (@CustomerId, @Content)
END