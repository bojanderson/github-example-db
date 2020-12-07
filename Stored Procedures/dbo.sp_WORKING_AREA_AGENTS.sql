SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[sp_WORKING_AREA_AGENTS] 
	@WorkingArea CHAR(35)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	*
	FROM	dbo.AGENTS
	WHERE	WORKING_AREA = @WorkingArea

END
GO
