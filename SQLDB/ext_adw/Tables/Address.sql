CREATE TABLE [ext_adw].[Address] (
    [AddressID]     INT              NULL,
    [AddressLine1]  NVARCHAR (60)    NULL,
    [AddressLine2]  NVARCHAR (60)    NULL,
    [City]          NVARCHAR (30)    NULL,
    [StateProvince] NVARCHAR (50)    NULL,
    [CountryRegion] NVARCHAR (50)    NULL,
    [PostalCode]    NVARCHAR (15)    NULL,
    [rowguid]       UNIQUEIDENTIFIER NULL,
    [ModifiedDate]  DATETIME         NULL
);

