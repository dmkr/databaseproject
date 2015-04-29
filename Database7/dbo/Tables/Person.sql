CREATE TABLE [dbo].[Person] (
    [person_id]     INT            IDENTITY (1, 1) NOT NULL,
    [first_name]    NVARCHAR (50)  NULL,
    [last_name]     NVARCHAR (50)  NULL,
    [street]        NVARCHAR (70)  NULL,
    [supp_add]      NVARCHAR (50)  NULL,
    [city]          NVARCHAR (50)  NULL,
    [location_code] NVARCHAR (20)  NULL,
    [province]      NVARCHAR (50)  NULL,
    [email]         NVARCHAR (256) NULL,
    CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED ([person_id] ASC)
);

