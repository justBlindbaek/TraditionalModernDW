
CREATE VIEW [ext].[Sales]
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
FROM [ext_adw].[SalesOrderDetail] sd
LEFT OUTER JOIN [ext_adw].[SalesOrderHeader] sh ON sh.SalesOrderID = sd.SalesOrderID
