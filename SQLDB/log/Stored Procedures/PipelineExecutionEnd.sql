
CREATE PROCEDURE [log].[PipelineExecutionEnd]
	  @ID_PipelineExecution INT
	  , @ErrorText VARCHAR(255)
AS
SET NOCOUNT ON;
	  
BEGIN 

	DECLARE @Message VARCHAR(200)

	DECLARE @ds DATETIME = GETDATE()
	-- check if there is a row in PipelineExecution with empty EndTime
	IF EXISTS (SELECT 1 FROM [log].[PipelineExecution] WHERE [ID_PipelineExecution] = @ID_PipelineExecution AND EndTime IS NULL)
	BEGIN		
		UPDATE [log].[PipelineExecution]
		SET EndTime = @ds
		, ErrorText = @ErrorText
		WHERE [ID_PipelineExecution] = @ID_PipelineExecution;
	END
	ELSE 
	BEGIN
		SET @Message  = 'Pipeline Execution with ID_PipelineExecution ' + CAST(@ID_PipelineExecution AS VARCHAR(20)) + ' does not exist or has already finished.'
		RAISERROR ( @Message, 16,1)
	END
	
END

;
