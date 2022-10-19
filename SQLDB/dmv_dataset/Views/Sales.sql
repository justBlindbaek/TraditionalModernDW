CREATE VIEW [dmv_dataset].[Sales]
AS

SELECT [DWID_OrderDate]
      ,[DWID_Customer]
      ,[DWID_Product]
      ,[AccountNumber]
      ,[OrderQty] AS [M_OrderQty]
      ,CAST([UnitPrice] AS DECIMAL(16,4)) AS [M_UnitPrice]
      ,CAST([UnitPriceDiscount] AS DECIMAL(16,4)) AS [M_UnitPriceDiscount]
      ,CAST([LineTotal] AS DECIMAL(16,4)) AS [M_LineTotal]
      ,CAST([Freight] AS DECIMAL(16,4)) AS [M_Freight]
      ,CAST([TaxAmt] AS DECIMAL(16,4)) AS [M_TaxAmt]
  FROM [bas].[FactSales]