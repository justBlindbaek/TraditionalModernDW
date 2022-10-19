CREATE PROC [sta].[UpdateTable] @ID_PipelineExecution INT, @TableName VARCHAR(255)
AS
BEGIN

DECLARE @ID_TaskExecution BIGINT
DECLARE @Taskname VARCHAR(255)
SET @TaskName = 'Update sta.' + @TableName

DECLARE @SQL NVARCHAR(MAX) = 
	CONCAT('TRUNCATE TABLE [sta].[', @TableName, ']; INSERT INTO [sta].[', @TableName, '] SELECT * FROM [raw].[', @TableName, '];');

EXECUTE @ID_TaskExecution = [log].[TaskExecutionStart] @ID_PipelineExecution = @ID_PipelineExecution, @TaskName = @TaskName

--PRINT @SQL
EXECUTE sp_executesql @SQL

EXECUTE [log].[TaskExecutionEnd] @ID_TaskExecution = @ID_TaskExecution, @ErrorText = NULL, @RowsAdded = @@ROWCOUNT
--PRINT @ID_TaskExecution

END
