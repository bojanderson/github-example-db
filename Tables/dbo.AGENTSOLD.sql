CREATE TABLE [dbo].[AGENTSOLD]
(
[AGENT_CODE] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGENT_NAME] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WORKING_AREA] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMMISSION] [decimal] (10, 2) NULL,
[PHONE_NO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COUNTRY] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExportDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AGENTSOLD] ADD CONSTRAINT [PK__AGENTS__843A8BBAD4761D21] PRIMARY KEY CLUSTERED  ([AGENT_CODE]) ON [PRIMARY]
GO
