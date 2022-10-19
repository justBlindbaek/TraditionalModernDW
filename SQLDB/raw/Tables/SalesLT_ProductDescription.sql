CREATE TABLE [raw].[SalesLT_ProductDescription] (
    [ProductDescriptionID] INT              NULL,
    [Description]          NVARCHAR (400)   NULL,
    [rowguid]              UNIQUEIDENTIFIER NULL,
    [ModifiedDate]         DATETIME         NULL,
    [ADF_PipelineRunId]    NVARCHAR (100)   NULL
);

