SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_Day2_ORDER_BY_DAY]
	@OrdDate DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT	[ORD_DATE]
		,	[ORD_COUNT]
		,	[myChange]
	FROM	[dbo].[vw_ORDER_BY_DAY]
	WHERE	ORD_DATE = @OrdDate

END
GO
