-- =============================================
-- Author:		David
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[CreateClass] 
	-- Add the parameters for the stored procedure here
	@pDifficulty varchar(15), 
	@pTitle varchar(150),
	@pDescription varchar(255),
	@pDuration tinyint = 60,
	@pTopic varchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO EventClass 
			([difficulty],[title],[description],[duration],[track_id])
		SELECT @pDifficulty, @pTitle, @pDescription, @pDuration, track_id 
		FROM track 
		WHERE topic = @pTopic;

END
