CREATE TABLE [raw].[SalesLT_CustomerAddress] (
    [CustomerID]        INT              NULL,
    [AddressID]         INT              NULL,
    [AddressType]       NVARCHAR (50)    NULL,
    [rowguid]           UNIQUEIDENTIFIER NULL,
    [ModifiedDate]      DATETIME         NULL,
    [ADF_PipelineRunId] NVARCHAR (100)   NULL
);

