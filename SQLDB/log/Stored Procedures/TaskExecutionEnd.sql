

CREATE PROCEDURE [log].[TaskExecutionEnd] @ID_TaskExecution BIGINT, @ErrorText VARCHAR(255), @RowsAdded BIGINT
AS
SET NOCOUNT ON;
	  
BEGIN 

	DECLARE @Message VARCHAR(200)

	DECLARE @ds DATETIME = GETDATE()
	-- check if there is a row in PipelineExecution with empty EndTime
	IF EXISTS (SELECT 1 FROM [log].[TaskExecution] WHERE [ID_TaskExecution] = @ID_TaskExecution AND EndTime IS NULL)
	BEGIN		
		UPDATE [log].[TaskExecution]
			SET EndTime = @ds, ErrorText = @ErrorText, RowsAdded = @RowsAdded
			WHERE [ID_TaskExecution] = @ID_TaskExecution;
	END
	ELSE 
	BEGIN
		SET @Message  = 'Task Execution with ID_TaskExecution ' + CAST(@ID_TaskExecution AS VARCHAR(20)) + ' does not exist or has already finished.'
		RAISERROR ( @Message, 16,1)
	END
	
END

;
