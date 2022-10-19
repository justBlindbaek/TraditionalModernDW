
CREATE VIEW [raw].[Sales]
AS

SELECT sh.[OrderDate]
      ,sh.[CustomerID]
      ,sd.[ProductID]
      ,sh.[AccountNumber]
      ,sd.[OrderQty]
      ,sd.[UnitPrice]
      ,sd.[UnitPriceDiscount]
      ,sd.[LineTotal]
      ,sh.[Freight]
      ,sh.[TaxAmt]
FROM [raw].[SalesLT_SalesOrderDetail] sd
LEFT OUTER JOIN [raw].[SalesLT_SalesOrderHeader] sh ON sh.SalesOrderID = sd.SalesOrderID
