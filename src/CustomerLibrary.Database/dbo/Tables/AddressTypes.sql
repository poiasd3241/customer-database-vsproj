CREATE TABLE [dbo].[AddressTypes] (
    [AddressTypeId] INT         NOT NULL,
    [Type]          VARCHAR (8) NOT NULL,
    CONSTRAINT [PK_AddressTypes_AddressTypeId] PRIMARY KEY CLUSTERED ([AddressTypeId] ASC),
    CONSTRAINT [UQ_AddressTypes_Type] UNIQUE NONCLUSTERED ([Type] ASC)
);
