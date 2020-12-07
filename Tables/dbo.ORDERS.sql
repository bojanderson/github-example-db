CREATE TABLE [dbo].[ORDERS]
(
[ORD_NUM] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD_AMOUNT] [decimal] (12, 2) NOT NULL,
[ADVANCE_AMOUNT] [decimal] (12, 2) NOT NULL,
[ORD_DATE] [date] NOT NULL,
[CUST_CODE] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGENT_CODE] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD_DESCRIPTION] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORDERS] ADD CONSTRAINT [PK__ORDERS__27AB607C9D33B2C2] PRIMARY KEY CLUSTERED  ([ORD_NUM]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORDERS] ADD CONSTRAINT [FK__ORDERS__AGENT_CO__3C69FB99] FOREIGN KEY ([AGENT_CODE]) REFERENCES [dbo].[AGENTS] ([AGENT_CODE])
GO
ALTER TABLE [dbo].[ORDERS] ADD CONSTRAINT [FK__ORDERS__CUST_COD__3B75D760] FOREIGN KEY ([CUST_CODE]) REFERENCES [dbo].[CUSTOMER] ([CUST_CODE])
GO