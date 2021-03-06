SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE VIEW [dbo].[vw_MONTHLY_SALES] AS 

	SELECT	YEAR(ORD_DATE)		AS OrderYear
		,	MONTH(ORD_DATE)		AS OrderMonth
		,	SUM([ORD_AMOUNT])	AS OrderAmount
		,	'HmBurgessNewCol'	AS	HBChange
		,	'makingchanges'		AS	AnotherChange
	FROM [dbo].[ORDERS]
	GROUP BY	YEAR(ORD_DATE)
			,	MONTH(ORD_DATE)

GO
