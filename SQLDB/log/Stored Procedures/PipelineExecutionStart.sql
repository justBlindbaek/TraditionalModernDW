
CREATE PROCEDURE [log].[PipelineExecutionStart]
	@ID_PipelineExecution BIGINT OUTPUT
	, @PipelineRunID VARCHAR(50)
	, @PipelineName VARCHAR(255)
AS
BEGIN

	SET NOCOUNT ON;

BEGIN TRY

	DECLARE @ServiceTier VARCHAR(255)
	SET @ServiceTier = (SELECT CAST(DATABASEPROPERTYEX(db_name(),'edition') AS VARCHAR(255)))
	DECLARE @ComputeSize VARCHAR(255)
	SET @ComputeSize = (SELECT CAST(DATABASEPROPERTYEX(db_name(),'serviceobjective') AS VARCHAR(255)))


	BEGIN
		BEGIN TRANSACTION
			SELECT @ID_PipelineExecution = (SELECT MAX([ID_PipelineExecution]) FROM [log].[PipelineExecution]) + 1
			IF @ID_PipelineExecution IS NULL SET @ID_PipelineExecution = 1
			
			INSERT [log].[PipelineExecution] ([ID_PipelineExecution] , PipelineRunID, [PipelineName], [ServiceTier], [ComputeSize]) 
			VALUES (@ID_PipelineExecution, @PipelineRunID, @PipelineName, @ServiceTier, @ComputeSize)

			SELECT @ID_PipelineExecution AS ID_PipelineExecution,
				CASE 
				WHEN TABLE_SCHEMA = 'raw' THEN 'Stage' 
				WHEN TABLE_SCHEMA = 'sta' AND LEFT(TABLE_NAME, 3) = 'Dim' THEN 'Dimension' 
				WHEN TABLE_SCHEMA = 'sta' AND LEFT(TABLE_NAME, 4) = 'Fact' THEN 'Fact' 
				END AS StageName
				, TABLE_NAME AS TableName
			FROM INFORMATION_SCHEMA.VIEWS
			WHERE TABLE_SCHEMA IN ('raw', 'sta')

		COMMIT TRANSACTION
	END

END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION;
	THROW;
END CATCH

END 
;