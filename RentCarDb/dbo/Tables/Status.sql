CREATE TABLE [dbo].[Status] (
    [Id]         TINYINT      IDENTITY (1, 1) NOT NULL,
    [StatusName] VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED ([Id] ASC)
);

