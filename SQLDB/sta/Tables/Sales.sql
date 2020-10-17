CREATE TABLE [sta].[Sales] (
    [OrderDate]         DATETIME        NULL,
    [CustomerID]        INT             NULL,
    [ProductID]         INT             NOT NULL,
    [AccountNumber]     NVARCHAR (15)   NULL,
    [OrderQty]          SMALLINT        NOT NULL,
    [UnitPrice]         MONEY           NOT NULL,
    [UnitPriceDiscount] MONEY           NOT NULL,
    [LineTotal]         NUMERIC (38, 6) NOT NULL,
    [Freight]           MONEY           NULL,
    [TaxAmt]            MONEY           NULL
);

