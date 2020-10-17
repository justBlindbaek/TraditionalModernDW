
CREATE PROC [bas].[UpdateFact] 
	@ID_PipelineExecution INT,
	@FactName VARCHAR(255)
AS
BEGIN


DECLARE @ID_TaskExecution BIGINT
DECLARE @TaskName VARCHAR(255)
SET @TaskName = 'Update bas.' + @FactName

DECLARE @SQL NVARCHAR(MAX) = '';

SET @SQL = '
TRUNCATE TABLE [bas].[' + @FactName + ']
INSERT INTO [bas].[' + @FactName + ']
SELECT *
FROM [sta].[' + @FactName + ']'

EXECUTE @ID_TaskExecution = [log].[TaskExecutionStart] @ID_PipelineExecution = @ID_PipelineExecution, @TaskName = @TaskName

EXECUTE sp_executesql @SQL

EXECUTE [log].[TaskExecutionEnd] @ID_TaskExecution = @ID_TaskExecution, @ErrorText = NULL, @RowsAdded = @@ROWCOUNT


END
