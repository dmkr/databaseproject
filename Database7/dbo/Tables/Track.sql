CREATE TABLE [dbo].[Track] (
    [track_id] INT          IDENTITY (1, 1) NOT NULL,
    [topic]    VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED ([track_id] ASC)
);

