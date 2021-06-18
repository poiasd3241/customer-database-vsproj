CREATE TABLE [dbo].[Addresses] (
    [AddressId]     INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]    INT            NOT NULL,
    [AddressLine]   NVARCHAR (100) NOT NULL,
    [AddressLine2]  NVARCHAR (100) NULL,
    [AddressTypeId] INT            NOT NULL,
    [City]          NVARCHAR (50)  NOT NULL,
    [PostalCode]    VARCHAR (6)    NOT NULL,
    [State]         NVARCHAR (20)  NOT NULL,
    [Country]       NVARCHAR (13)  NOT NULL,
    CONSTRAINT [PK_Addresses_AddressId] PRIMARY KEY CLUSTERED ([AddressId] ASC),
    CONSTRAINT [CHK_Addresses_Country] CHECK ([Country]='Canada' OR [Country]='United States'),
    CONSTRAINT [FK_Addresses_AddressTypes_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [dbo].[AddressTypes] ([AddressTypeId]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Addresses_Customers_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
);
