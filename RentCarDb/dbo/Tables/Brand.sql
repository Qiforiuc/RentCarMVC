CREATE TABLE [dbo].[Brand] (
    [Id]        TINYINT      IDENTITY (1, 1) NOT NULL,
    [BrandName] VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED ([Id] ASC)
);

