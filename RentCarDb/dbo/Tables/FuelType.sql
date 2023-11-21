CREATE TABLE [dbo].[FuelType] (
    [Id]       TINYINT      IDENTITY (1, 1) NOT NULL,
    [FuelName] VARCHAR (30) NOT NULL,
    CONSTRAINT [PK_FuelType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

