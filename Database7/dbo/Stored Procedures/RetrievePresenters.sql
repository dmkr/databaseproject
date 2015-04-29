-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetrievePresenters]
	-- Add the parameters for the stored procedure here
	@pTopic varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT P.first_name, P.last_name, E.title
	FROM [dbo].[EventClass] E 
	JOIN Schedule S on S.class_id = E.class_id
	JOIN Person P on P.person_id = S.presenter_id
	JOIN Track T on T.track_id = E.track_id
	WHERE T.topic = @pTopic;

    -- Insert statements for procedure here
	
END
