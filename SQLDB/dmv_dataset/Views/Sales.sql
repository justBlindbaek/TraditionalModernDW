CREATE VIEW [dmv_dataset].[Sales]
AS

SELECT [DWID_OrderDate]
      ,[DWID_Customer]
      ,[DWID_Product]
      ,[AccountNumber]
      ,[OrderQty]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,[Freight]
      ,[TaxAmt]
  FROM [bas].[FactSales]