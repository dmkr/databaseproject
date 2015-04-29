-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE CreateSchedule 
	-- Add the parameters for the stored procedure here
	@pnDifficulty varchar(15), 
	@pnTitle varchar(150),
	@pnDescription varchar(255),
	@pnTopic varchar(50),
	@pnFirstName varchar,
	@pnLastName varchar,
	@pnRoomSize int,
	@pnRoomName varchar,
	@pnLocationType varchar = 'Room',
	@pStartTime datetime
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

	EXEC CreateClass @pDifficulty = @pnDifficulty, @pTitle = @pnTitle, @pDescription = @pnDescription, @pTopic=@pnTopic;

	Declare @table2 table (id int, mrow int)
	INSERT INTO @table2 Values (
	(SELECT class_id FROM EventClass WHERE title = @pnTitle AND difficulty = @pnDifficulty AND description = @pnDescription), 1);
	

	
	DECLARE @table1 table (id int, mrow int)
	INSERT INTO  Person ([first_name], [last_name]) OUTPUT INSERTED.person_id,1 into @table1 VALUES (@pnFirstName, @pnLastName);

	INSERT INTO Presenter ([person_id])
	SELECT id FROM @table1;

	DECLARE @table3 table (id int, mrow int)
	INSERT INTO Location ([location_name],[size],[type]) OUTPUT INSERTED.location_id, 1 INTO @table3 VALUES (@pnRoomName,@pnRoomSize, @pnLocationType);
	
	INSERT INTO Schedule ([class_id], [location_id], [presenter_id])
		SELECT A.id, C.id, B.id
	FROM @table2 A 
	JOIN @table1 B ON B.mrow = A.mrow
	JOIN @table3 C on C.mrow = b.mrow
	WHERE C.mrow = B.mrow;

	UPDATE Schedule
		SET class_start_time = @pStartTime
		WHERE schedule_id = @@IDENTITY;

END
