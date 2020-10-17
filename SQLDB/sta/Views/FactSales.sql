
CREATE VIEW [sta].[FactSales]
AS

SELECT CAST(CONVERT(varchar(8), s.[OrderDate], 112) AS int) AS [DWID_OrderDate]
      ,c.[DWID_Customer]
      ,p.[DWID_Product]
      ,s.[AccountNumber]
      ,s.[OrderQty]
      ,s.[UnitPrice]
      ,s.[UnitPriceDiscount]
      ,s.[LineTotal]
      ,s.[Freight]
      ,s.[TaxAmt]
FROM [sta].[Sales] s
LEFT OUTER JOIN [bas].[DimCustomer] c ON c.[CustomerID] = s.[CustomerID]
LEFT OUTER JOIN [bas].[DimProduct] p ON p.[ProductID] = s.[ProductID]
