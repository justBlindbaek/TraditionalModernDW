CREATE TABLE [log].[TaskExecution] (
    [ID_TaskExecution]     BIGINT        IDENTITY (1, 1) NOT NULL,
    [ID_PipelineExecution] BIGINT        NULL,
    [StartTime]            DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    [EndTime]              DATETIME2 (7) NULL,
    [ExecutedBy]           VARCHAR (128) DEFAULT (suser_sname()) NOT NULL,
    [RowsAdded]            INT           NULL,
    [RowsUpdated]          INT           NULL,
    [RowsError]            INT           NULL,
    [TaskName]             VARCHAR (255) NULL,
    [Description]          VARCHAR (255) NULL,
    [ErrorValue]           VARCHAR (255) NULL,
    [ErrorText]            VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID_TaskExecution] ASC)
);

