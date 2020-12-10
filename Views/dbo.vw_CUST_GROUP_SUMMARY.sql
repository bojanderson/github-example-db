SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[vw_CUST_GROUP_SUMMARY] AS 

	SELECT	WORKING_AREA
		,	GRADE
		,	COUNT(*) as CUST_COUNT
		,	SUM(OUTSTANDING_AMT) as OUTSTANDING_AMOUNT
	FROM	dbo.CUSTOMER
	GROUP BY WORKING_AREA
		,	GRADE

GO
