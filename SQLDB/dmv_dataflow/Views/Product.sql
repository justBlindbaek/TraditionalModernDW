
CREATE VIEW [dmv_dataflow].[Product]
AS

SELECT [DWID_Product]
      ,[ProductID]
      ,[ProductName]
      ,[ProductNumber]
      ,[Color]
      ,[StandardCost]
      ,[ListPrice]
      ,[Size]
      ,[Weight]
      ,[ProductCategoryName]
      ,[ProductModel]
FROM [bas].[DimProduct]
