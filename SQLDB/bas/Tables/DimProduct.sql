CREATE TABLE [bas].[DimProduct] (
    [DWID_Product]        INT            IDENTITY (1, 1) NOT NULL,
    [ProductID]           INT            NOT NULL,
    [ProductName]         NVARCHAR (50)  NULL,
    [ProductNumber]       NVARCHAR (25)  NULL,
    [Color]               NVARCHAR (15)  NULL,
    [StandardCost]        MONEY          NOT NULL,
    [ListPrice]           MONEY          NOT NULL,
    [Size]                NVARCHAR (5)   NULL,
    [Weight]              DECIMAL (8, 2) NULL,
    [ProductCategoryName] NVARCHAR (50)  NULL,
    [ProductModel]        NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([DWID_Product] ASC)
);

