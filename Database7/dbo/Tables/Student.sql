CREATE TABLE [dbo].[Student] (
    [person_id] INT NOT NULL,
    CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED ([person_id] ASC),
    CONSTRAINT [FK_Student_Persons] FOREIGN KEY ([person_id]) REFERENCES [dbo].[Person] ([person_id])
);

