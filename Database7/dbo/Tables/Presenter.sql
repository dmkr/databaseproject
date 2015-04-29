CREATE TABLE [dbo].[Presenter] (
    [person_id] INT NOT NULL,
    CONSTRAINT [PK_Presenter_1] PRIMARY KEY CLUSTERED ([person_id] ASC),
    CONSTRAINT [FK_Presenter_Persons] FOREIGN KEY ([person_id]) REFERENCES [dbo].[Person] ([person_id])
);

