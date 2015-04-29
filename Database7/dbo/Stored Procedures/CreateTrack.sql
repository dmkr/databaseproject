
CREATE PROCEDURE [dbo].[CreateTrack] (@pTopic  varchar(50))
AS 
BEGIN 

INSERT INTO [dbo].[Track]
           ([topic])
     VALUES
           (@pTopic);
END


