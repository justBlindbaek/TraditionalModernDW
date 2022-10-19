CREATE TABLE [raw].[SalesLT_Customer] (
    [CustomerID]        INT              NULL,
    [NameStyle]         BIT              NULL,
    [Title]             NVARCHAR (8)     NULL,
    [FirstName]         NVARCHAR (50)    NULL,
    [MiddleName]        NVARCHAR (50)    NULL,
    [LastName]          NVARCHAR (50)    NULL,
    [Suffix]            NVARCHAR (10)    NULL,
    [CompanyName]       NVARCHAR (128)   NULL,
    [SalesPerson]       NVARCHAR (256)   NULL,
    [EmailAddress]      NVARCHAR (50)    NULL,
    [Phone]             NVARCHAR (25)    NULL,
    [PasswordHash]      VARCHAR (128)    NULL,
    [PasswordSalt]      VARCHAR (10)     NULL,
    [rowguid]           UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [ADF_PipelineRunId] NVARCHAR (100)   NULL
);