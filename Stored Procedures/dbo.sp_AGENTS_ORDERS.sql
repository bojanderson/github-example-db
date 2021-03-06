SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE PROCEDURE [dbo].[sp_AGENTS_ORDERS] 
	@AgentCode CHAR(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	*, 'Test' as ExtraColumn
	FROM		dbo.ORDERS	ORD
	INNER JOIN	dbo.AGENTS	AGT	ON ORD.AGENT_CODE = AGT.AGENT_CODE
	WHERE	AGT.AGENT_CODE = @AgentCode

END
GO
