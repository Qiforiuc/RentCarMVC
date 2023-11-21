CREATE TABLE [dbo].[Transmission] (
    [Id]               TINYINT      IDENTITY (1, 1) NOT NULL,
    [TransmissionName] VARCHAR (40) NOT NULL,
    CONSTRAINT [PK_Transmission] PRIMARY KEY CLUSTERED ([Id] ASC)
);

