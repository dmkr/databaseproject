CREATE TABLE [dbo].[Grade] (
    [class_id]   INT      NOT NULL,
    [student_id] INT      NOT NULL,
    [grade]      CHAR (2) NOT NULL,
    CONSTRAINT [FK_Grade_EventClass] FOREIGN KEY ([class_id]) REFERENCES [dbo].[EventClass] ([class_id]),
    CONSTRAINT [FK_Grade_Student] FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student] ([person_id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Grade]
    ON [dbo].[Grade]([class_id] ASC, [student_id] ASC);

