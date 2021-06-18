CREATE TABLE [dbo].[Notes] (
    [NoteId]     INT             IDENTITY (1, 1) NOT NULL,
    [Content]    NVARCHAR (1000) NOT NULL,
    [CustomerId] INT             NOT NULL,
    CONSTRAINT [PK_Notes_NoteId] PRIMARY KEY CLUSTERED ([NoteId] ASC),
    CONSTRAINT [FK_Notes_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]) ON DELETE CASCADE
);
