CREATE TABLE [dbo].[EventClass] (
    [class_id]    INT           IDENTITY (1, 1) NOT NULL,
    [title]       VARCHAR (150) NOT NULL,
    [track_id]    INT           NULL,
    [description] VARCHAR (255) NULL,
    [duration]    TINYINT       CONSTRAINT [DF_EventClass_duration] DEFAULT ((60)) NOT NULL,
    [difficulty]  VARCHAR (15)  NULL,
    CONSTRAINT [PK_EventClass] PRIMARY KEY CLUSTERED ([class_id] ASC),
    CONSTRAINT [FK_EventClass_Track] FOREIGN KEY ([track_id]) REFERENCES [dbo].[Track] ([track_id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_EventClass]
    ON [dbo].[EventClass]([difficulty] ASC, [title] ASC);

