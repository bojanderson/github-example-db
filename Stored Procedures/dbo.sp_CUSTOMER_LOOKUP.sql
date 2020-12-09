SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_CUSTOMER_LOOKUP]
	-- Add the parameters for the stored procedure here
	@CustomerCode VARCHAR(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT	*
	FROM	dbo.CUSTOMER
	WHERE	CUST_CODE = @CustomerCode

END
GO
