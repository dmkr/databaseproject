CREATE TABLE [dbo].[Vendor] (
    [person_id] INT NOT NULL,
    CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([person_id] ASC),
    CONSTRAINT [FK_Vendor_Persons] FOREIGN KEY ([person_id]) REFERENCES [dbo].[Person] ([person_id])
);

