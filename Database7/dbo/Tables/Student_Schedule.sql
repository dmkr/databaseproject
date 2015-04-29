CREATE TABLE [dbo].[Student_Schedule] (
    [student_id]  INT NOT NULL,
    [schedule_id] INT NOT NULL,
    CONSTRAINT [FK_Sudent_Schedule_Schedule] FOREIGN KEY ([schedule_id]) REFERENCES [dbo].[Schedule] ([schedule_id]),
    CONSTRAINT [FK_Sudent_Schedule_Student] FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student] ([person_id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Student_Schedule]
    ON [dbo].[Student_Schedule]([student_id] ASC, [schedule_id] ASC);

