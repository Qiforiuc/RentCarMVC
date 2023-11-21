CREATE TABLE [dbo].[Drive] (
    [Id]        TINYINT      IDENTITY (1, 1) NOT NULL,
    [DriveName] VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_Drive] PRIMARY KEY CLUSTERED ([Id] ASC)
);

