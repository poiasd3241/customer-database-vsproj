CREATE TABLE [dbo].[Customers] (
    [CustomerId]           INT             IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)   NULL,
    [LastName]             NVARCHAR (50)   NOT NULL,
    [PhoneNumber]          VARCHAR (15)    NULL,
    [Email]                VARCHAR (320)   NULL,
    [TotalPurchasesAmount] DECIMAL (15, 2) NULL,
    CONSTRAINT [PK_Customers_CustomerId] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CONSTRAINT [CHK_Customers_Email] CHECK ([Email] like '%_@_%._%'),
    CONSTRAINT [CHK_Customers_PhoneNumber] CHECK ([PhoneNumber] like '+[1-9][0-9]%')
);
