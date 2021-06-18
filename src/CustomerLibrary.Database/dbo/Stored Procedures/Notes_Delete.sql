CREATE PROCEDURE [dbo].[Notes_Delete]
    @NoteId INT
AS
BEGIN
    DELETE FROM [dbo].[Notes] 
    WHERE [NoteId] = @NoteId
END