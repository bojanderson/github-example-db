SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO






CREATE PROCEDURE [dbo].[sp_Day2_CUST_WITH_OUTSTANDING]
	@CustCode VARCHAR(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	[CUST_CODE]
		,	[CUST_NAME]
		,	[OUTSTANDING_AMT]
      ,		Grade
	FROM	[dbo].[vw_CUST_WITH_OUTSTANDING]
	WHERE	@CustCode = @CustCode

END
GO
