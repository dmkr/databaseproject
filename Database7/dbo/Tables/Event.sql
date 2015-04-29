CREATE TABLE [dbo].[Event] (
    [event_id]      INT           IDENTITY (1, 1) NOT NULL,
    [location_name] VARCHAR (255) NOT NULL,
    [event_date]    SMALLDATETIME NOT NULL,
    [organizer_id]  INT           NOT NULL,
    CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED ([event_id] ASC),
    CONSTRAINT [FK_Event_Organizer] FOREIGN KEY ([organizer_id]) REFERENCES [dbo].[Organizer] ([person_id])
);

