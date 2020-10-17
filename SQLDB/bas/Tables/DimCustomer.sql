CREATE TABLE [bas].[DimCustomer] (
    [DWID_Customer] INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]    INT            NULL,
    [NameStyle]     BIT            NULL,
    [Title]         NVARCHAR (8)   NULL,
    [FirstName]     NVARCHAR (50)  NULL,
    [MiddleName]    NVARCHAR (50)  NULL,
    [LastName]      NVARCHAR (50)  NULL,
    [Suffix]        NVARCHAR (10)  NULL,
    [CompanyName]   NVARCHAR (128) NULL,
    [SalesPerson]   NVARCHAR (256) NULL,
    [EmailAddress]  NVARCHAR (50)  NULL,
    [Phone]         NVARCHAR (25)  NULL,
    PRIMARY KEY CLUSTERED ([DWID_Customer] ASC)
);

