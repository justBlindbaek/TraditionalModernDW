CREATE TABLE [log].[PipelineExecution] (
    [ID_PipelineExecution] BIGINT        NOT NULL,
    [StartTime]            DATETIME2 (7) DEFAULT (sysdatetime()) NOT NULL,
    [EndTime]              DATETIME2 (7) NULL,
    [ExecutedBy]           VARCHAR (128) DEFAULT (suser_sname()) NOT NULL,
    [PipelineRunID]        VARCHAR (50)  NULL,
    [PipelineName]         VARCHAR (255) NULL,
    [Description]          VARCHAR (255) NULL,
    [ErrorValue]           VARCHAR (255) NULL,
    [ErrorText]            VARCHAR (255) NULL,
    [ServiceTier]          VARCHAR (255) NULL,
    [ComputeSize]          VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([ID_PipelineExecution] ASC)
);

