SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE VIEW [dbo].[vw_ORDER_BY_DAY]
AS

	SELECT
    	    ORD_DATE
    	,	COUNT(*) as [ORD_COUNT]
		,	'Static' as myChange
		,	'Guitar' as myHobby
    FROM
    	dbo.ORDERS
    GROUP BY ORD_DATE


GO
