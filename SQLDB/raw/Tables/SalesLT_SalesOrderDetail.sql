CREATE TABLE [raw].[SalesLT_SalesOrderDetail] (
    [SalesOrderID]       INT              NULL,
    [SalesOrderDetailID] INT              NULL,
    [OrderQty]           SMALLINT         NULL,
    [ProductID]          INT              NULL,
    [UnitPrice]          MONEY            NULL,
    [UnitPriceDiscount]  MONEY            NULL,
    [LineTotal]          DECIMAL (38, 6)  NULL,
    [rowguid]            UNIQUEIDENTIFIER NULL,
    [ModifiedDate]       DATETIME         NULL,
    [ADF_PipelineRunId]  NVARCHAR (100)   NULL
);

