CREATE TABLE [raw].[SalesLT_ProductModel] (
    [ProductModelID]     INT              NULL,
    [Name]               NVARCHAR (50)    NULL,
    [CatalogDescription] XML              NULL,
    [rowguid]            UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL,
    [ADF_PipelineRunId]  NVARCHAR (100)   NULL
);

