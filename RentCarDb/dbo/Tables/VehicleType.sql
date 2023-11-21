CREATE TABLE [dbo].[VehicleType] (
    [Id]       TINYINT      IDENTITY (1, 1) NOT NULL,
    [TypeName] VARCHAR (40) NOT NULL,
    [Seats]    INT          NOT NULL,
    CONSTRAINT [PK_VehicleType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

