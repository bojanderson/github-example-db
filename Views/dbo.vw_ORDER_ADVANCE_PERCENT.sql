SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



-- Mike's comment 

CREATE VIEW [dbo].[vw_ORDER_ADVANCE_PERCENT] AS 

SELECT	[ORD_NUM]
	,	[ORD_AMOUNT]
	,	[ADVANCE_AMOUNT]
	,	[ADVANCE_AMOUNT] / [ORD_AMOUNT]	AS ADV_PERCENT
	,	[ORD_DESCRIPTION]
FROM [dbo].[ORDERS]

GO
