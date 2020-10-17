CREATE TABLE [bas].[FactSales] (
    [DWID_OrderDate]    INT             NULL,
    [DWID_Customer]     INT             NULL,
    [DWID_Product]      INT             NULL,
    [AccountNumber]     NVARCHAR (15)   NULL,
    [OrderQty]          SMALLINT        NOT NULL,
    [UnitPrice]         MONEY           NOT NULL,
    [UnitPriceDiscount] MONEY           NOT NULL,
    [LineTotal]         NUMERIC (38, 6) NOT NULL,
    [Freight]           MONEY           NULL,
    [TaxAmt]            MONEY           NULL
);

