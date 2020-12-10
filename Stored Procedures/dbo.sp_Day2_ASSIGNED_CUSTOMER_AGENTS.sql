SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE PROCEDURE [dbo].[sp_Day2_ASSIGNED_CUSTOMER_AGENTS] 
	@AgentCode CHAR(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT	[CUST_CODE]
		,	[CUST_NAME]
		,	[AGENT_CODE]
		,	[AGENT_NAME]
		,	[NewColumn]
	FROM [dbo].[vw_ASSIGNED_CUSTOMER_AGENTS]
	WHERE	[AGENT_CODE] = @AgentCode

END
GO
