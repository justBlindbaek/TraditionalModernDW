CREATE TABLE [ext_adw].[ProductCategory] (
    [ProductCategoryID]       INT              NULL,
    [ParentProductCategoryID] INT              NULL,
    [Name]                    NVARCHAR (50)    NULL,
    [rowguid]                 UNIQUEIDENTIFIER NULL,
    [ModifiedDate]            DATETIME         NULL
);

