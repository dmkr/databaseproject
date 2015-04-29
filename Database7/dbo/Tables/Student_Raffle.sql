CREATE TABLE [dbo].[Student_Raffle] (
    [student_id] INT NOT NULL,
    [raffle_id]  INT NOT NULL,
    CONSTRAINT [FK_Student_Raffle_Raffle] FOREIGN KEY ([raffle_id]) REFERENCES [dbo].[Raffle] ([vendor_id]),
    CONSTRAINT [FK_Student_Raffle_Student] FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student] ([person_id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Student_Raffle]
    ON [dbo].[Student_Raffle]([student_id] ASC, [raffle_id] ASC);

