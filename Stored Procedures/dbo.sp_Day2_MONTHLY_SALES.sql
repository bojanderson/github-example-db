SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO







CREATE PROCEDURE [dbo].[sp_Day2_MONTHLY_SALES]
	@OrderYear INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	[OrderYear]
		,	[OrderMonth]
		,	[OrderAmount]
  FROM [GitHub_Example].[dbo].[vw_MONTHLY_SALES]
  WHERE	OrderYear = @OrderYear

END
GO
