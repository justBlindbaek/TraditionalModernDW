CREATE TABLE [raw].[SalesLT_ProductCategory] (
    [ProductCategoryID]       INT              NULL,
    [ParentProductCategoryID] INT              NULL,
    [Name]                    NVARCHAR (50)    NULL,
    [rowguid]                 UNIQUEIDENTIFIER NULL,
    [ModifiedDate]            DATETIME         NULL,
    [ADF_PipelineRunId]       NVARCHAR (100)   NULL
);

