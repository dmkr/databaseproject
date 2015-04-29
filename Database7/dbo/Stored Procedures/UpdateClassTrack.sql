-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UpdateClassTrack
	-- Add the parameters for the stored procedure here
	@pTitle varchar(150),
	@pTopic varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    
	UPDATE EventClass 
	SET track_id = (SELECT track_id FROM Track where topic = @pTopic)
	WHERE title = @pTitle;
END
