-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE RetrievRooms
	@pTopic varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT L.location_name, E.title
	FROM [dbo].[EventClass] E 
	JOIN Schedule S on S.class_id = E.class_id
	JOIN Location L on L.location_id = S.location_id
	JOIN Track T on T.track_id = E.track_id
	WHERE T.topic = @pTopic;
END
