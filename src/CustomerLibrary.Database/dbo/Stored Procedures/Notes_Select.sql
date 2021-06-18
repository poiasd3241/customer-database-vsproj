CREATE PROCEDURE [dbo].[Notes_Select]
    @NoteId INT
AS
BEGIN
    SELECT *
    FROM [dbo].[Notes]
    WHERE [NoteId] = @NoteId
END