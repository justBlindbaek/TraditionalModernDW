
CREATE VIEW [sta].[DimProduct]
AS

SELECT p.[ProductID]
      ,p.[Name] AS [ProductName]
      ,p.[ProductNumber]
      ,p.[Color]
      ,p.[StandardCost]
      ,p.[ListPrice]
      ,COALESCE(p.[Size], 'NA') AS [Size]
      ,COALESCE(p.[Weight], 0) AS [Weight]
      ,pc.[Name] AS [ProductCategoryName]
      ,pm.[Name] AS [ProductModel]
FROM [raw].[SalesLT_Product] p 
LEFT OUTER JOIN [raw].[SalesLT_ProductCategory] pc ON pc.ProductCategoryID = p.ProductCategoryID
LEFT OUTER JOIN [raw].[SalesLT_ProductModel] pm ON pm.ProductModelID = p.ProductModelID
