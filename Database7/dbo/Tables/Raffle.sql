CREATE TABLE [dbo].[Raffle] (
    [vendor_id]  INT          NOT NULL,
    [prize]      VARCHAR (50) NOT NULL,
    [student_id] INT          NOT NULL,
    CONSTRAINT [PK_Raffle] PRIMARY KEY CLUSTERED ([vendor_id] ASC),
    CONSTRAINT [FK_Raffle_Vendor] FOREIGN KEY ([vendor_id]) REFERENCES [dbo].[Vendor] ([person_id])
);

