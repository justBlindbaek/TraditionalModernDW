CREATE TABLE [ext_adw].[ProductModel] (
    [ProductModelID]     INT              NULL,
    [Name]               NVARCHAR (50)    NULL,
    [CatalogDescription] XML              NULL,
    [rowguid]            UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL
);

