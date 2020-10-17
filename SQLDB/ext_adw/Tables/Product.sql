CREATE TABLE [ext_adw].[Product] (
    [ProductID]              INT              NULL,
    [Name]                   NVARCHAR (50)    NULL,
    [ProductNumber]          NVARCHAR (25)    NULL,
    [Color]                  NVARCHAR (15)    NULL,
    [StandardCost]           MONEY            NULL,
    [ListPrice]              MONEY            NULL,
    [Size]                   NVARCHAR (5)     NULL,
    [Weight]                 DECIMAL (8, 2)   NULL,
    [ProductCategoryID]      INT              NULL,
    [ProductModelID]         INT              NULL,
    [SellStartDate]          DATETIME         NULL,
    [SellEndDate]            DATETIME         NULL,
    [DiscontinuedDate]       DATETIME         NULL,
    [ThumbNailPhoto]         VARBINARY (MAX)  NULL,
    [ThumbnailPhotoFileName] NVARCHAR (50)    NULL,
    [rowguid]                UNIQUEIDENTIFIER NULL,
    [ModifiedDate]           DATETIME         NULL
);

