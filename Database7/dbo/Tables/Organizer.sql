CREATE TABLE [dbo].[Organizer] (
    [person_id] INT NOT NULL,
    CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED ([person_id] ASC),
    CONSTRAINT [FK_Organizer_Persons] FOREIGN KEY ([person_id]) REFERENCES [dbo].[Person] ([person_id])
);

