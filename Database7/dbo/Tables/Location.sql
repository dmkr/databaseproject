CREATE TABLE [dbo].[Location] (
    [location_id]   INT           IDENTITY (1, 1) NOT NULL,
    [type]          VARCHAR (5)   NULL,
    [size]          TINYINT       NULL,
    [location_name] VARCHAR (150) NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([location_id] ASC)
);

