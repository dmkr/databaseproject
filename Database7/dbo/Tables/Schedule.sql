CREATE TABLE [dbo].[Schedule] (
    [schedule_id]      INT      IDENTITY (1, 1) NOT NULL,
    [vendor_id]        INT      NULL,
    [location_id]      INT      NULL,
    [class_id]         INT      NULL,
    [event_id]         INT      NULL,
    [class_start_time] DATETIME NULL,
    [presenter_id]     INT      NULL,
    CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED ([schedule_id] ASC),
    CONSTRAINT [FK_Schedule_Event] FOREIGN KEY ([event_id]) REFERENCES [dbo].[Event] ([event_id]),
    CONSTRAINT [FK_Schedule_EventClass] FOREIGN KEY ([class_id]) REFERENCES [dbo].[EventClass] ([class_id]),
    CONSTRAINT [FK_Schedule_Location] FOREIGN KEY ([location_id]) REFERENCES [dbo].[Location] ([location_id]),
    CONSTRAINT [FK_Schedule_Presenter1] FOREIGN KEY ([presenter_id]) REFERENCES [dbo].[Presenter] ([person_id]),
    CONSTRAINT [FK_Schedule_Vendor] FOREIGN KEY ([vendor_id]) REFERENCES [dbo].[Vendor] ([person_id])
);

