
CREATE PROC [bas].[UpdateDimension] 
	@ID_PipelineExecution INT,
	@DimensionName VARCHAR(255)
AS
BEGIN

DECLARE @ID_TaskExecution BIGINT
DECLARE @TaskName VARCHAR(255)
SET @TaskName = 'Update bas.' + @DimensionName

DECLARE @Attributes NVARCHAR(MAX)  = '';

IF OBJECT_ID('tempdb..#cols') IS NOT NULL DROP TABLE #cols

	SELECT COLUMN_NAME AS ColName
	INTO #cols
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA = 'sta' 
		AND TABLE_NAME = @DimensionName

SELECT @Attributes = SUBSTRING( (SELECT ',' + ColName From #cols FOR XML PATH('') ), 2, 4000)

DECLARE @SQL NVARCHAR(MAX) = '';

SET @SQL = '
TRUNCATE TABLE [bas].[' + @DimensionName + ']
INSERT INTO [bas].[' + @DimensionName + ']
SELECT ' + @Attributes + '
FROM [sta].[' + @DimensionName + ']'

--PRINT @SQL

EXECUTE @ID_TaskExecution = [log].[TaskExecutionStart] @ID_PipelineExecution = @ID_PipelineExecution, @TaskName = @TaskName

EXECUTE sp_executesql @SQL

EXECUTE [log].[TaskExecutionEnd] @ID_TaskExecution = @ID_TaskExecution, @ErrorText = NULL, @RowsAdded = @@ROWCOUNT

END
