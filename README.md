# The Traditional Modern Data Warehouse
Big data, Databricks and now also Synapse Analytics. Microsoft really focuses on how to put together BI and Data Warehouse solutions that can handle huge volumes of data. But what about the "ordinary" solutions in the SME market? How do we put together a simple, scalable, sensible and affordable Azure solution for them? Where we can also reuse the competencies we have already built from making the same solutions on SQL Server.

## The architecture
A very simple "ETL framework" based on Integration Pipelines (Data Factory), Data Lake Storage, SQL Database and Power BI. The archtecture consist of multiple different layers, where I have let me inspire and is using some of the terms from the "modern" solutions. There really isn't anything new in this way of creating an architecture - it's mostly a matter of naming and then use the Azure services in the best possible way.

![Architecture](https://justb.dk/wp-content/uploads/2022/07/TraditionalModernDWH.png)

## SQL Database Project
All trough the initial archtecture shows two SQL Databases, we combine the Store and Transform in the same database. Here you find schemas, tables, views and stored procedures. All object that is used to transform the data from the "raw" layer all the way to dimensions and facts in the baseline layer. The staging layer is optional and can be used if you need to do some generic transformations and/or cleaning, that you can reuse in multible of the facts and dimensions. The Data Mart layers is only views and serve of the "contract" between the baseline layer and the Data Models and other systems that need to integrate with the Data Warehouse.

![Transform with SQL DB](https://justb.dk/wp-content/uploads/2022/07/SQLframework.png)

The black arrows is where the "magic" happens. Here we move and transform data from one layer to the next. The transformation is defined in views and a couple of generic stored procedures is then taking the output of the views and persist the data in tables in the next layer. Etc....

The blue arrows represent moving data in and out of the SQL Database and is handled with Pipelines. The grey arrows are views with minimal logic. Mostly handling naming, selecting columns and filtering rows.

## Integration Pipelines (Data Factory)
The pipelines serves two purposes: Ingesting data and orchestrating the ETL process. In my opinion, this is the best tool to do these jobs. Not only in this solution, but in general. You will find these four templates:

 - Dynamic pipeline to ingest data from a SQL based source system
 - Dynamic pipeline to transform dimensions and facts with the use of the SQL database
 - Utility pipeline to scale Azure SQL database
 - Utility pipeline to refresh a Power BI data model


 ### Master pipeline to orchestrate a full ETL process
It's easy to build the master pipeline, as it's just a matter of calling the other pipeline in the correct order and with the right parameters. Here is an example:

![Master Pipeline](https://justb.dk/wp-content/uploads/2022/07/MasterPipeline.png)


### Linked Services
You will need to create a Linked Service to your Azure SQL database to be able to import the "transform pipeline". If you also want to use the ingest pipeline, then you also need one or more Linked Services to your SQL based source system. The transformation is using the AdventureWorksLT database that you can create as a sample database, when creating a new SQL database in Azure.


## Tabular Editor Scripts (coming soon)
A series of scripts to quickly build a data model with the free version of Tabular Editor, that you can then deploy directly to Power BI with the use of the XMLA endpoint.

### XMLA endpoint
Unlock Analysis Services in Power BI, so you can deploy your "enterprise" data models directly.

## Additional components
The solution also consist of some additional components
 - Data Lake Storage
 - Azure Monitor (Log Analytics)
 - Key Vault


## Presentation of the solution
See a slightly older presentation of the solution on my YouTube channel. It's recorded as part of the SQLDay 2020 conference: https://www.youtube.com/watch?v=vpId9bOqVJs&ab_channel=justB
