CREATE PROCEDURE [dbo].[Notes_Update]
    @NoteId INT,
    @Content NVARCHAR(1000)
AS
BEGIN
    UPDATE [dbo].[Notes] 
    SET [Content] = @Content
    WHERE [NoteId] = @NoteId
END