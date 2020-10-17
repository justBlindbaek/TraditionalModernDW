
CREATE VIEW [dmv_dataflow].[Customer]
AS

SELECT [DWID_Customer]
      ,[CustomerID]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[CompanyName]
      ,[SalesPerson]
      ,[EmailAddress]
      ,[Phone]
FROM [bas].[DimCustomer]
