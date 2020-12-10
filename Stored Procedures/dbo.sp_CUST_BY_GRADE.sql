SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE PROCEDURE [dbo].[sp_CUST_BY_GRADE] 
	@Grade INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	*
	FROM		dbo.CUSTOMER
	WHERE	GRADE = @Grade

END
GO
