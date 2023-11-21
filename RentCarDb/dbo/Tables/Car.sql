CREATE TABLE [dbo].[Car] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [CarName]        VARCHAR (30)    NOT NULL,
    [Year]           INT             NOT NULL,
    [PricePerDay]    DECIMAL (8, 2)  NOT NULL,
    [BrandId]        TINYINT         NOT NULL,
    [VehicleTypeId]  TINYINT         NOT NULL,
    [TransmissionId] TINYINT         NOT NULL,
    [DriveId]        TINYINT         NOT NULL,
    [FuelTypeId]     TINYINT         NOT NULL,
    [Image]          VARBINARY (MAX) NOT NULL,
    CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Car_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Car_Drive_DriveId] FOREIGN KEY ([DriveId]) REFERENCES [dbo].[Drive] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Car_FuelType_FuelTypeId] FOREIGN KEY ([FuelTypeId]) REFERENCES [dbo].[FuelType] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Car_Transmission_TransmissionId] FOREIGN KEY ([TransmissionId]) REFERENCES [dbo].[Transmission] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Car_VehicleType_VehicleTypeId] FOREIGN KEY ([VehicleTypeId]) REFERENCES [dbo].[VehicleType] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Car_BrandId]
    ON [dbo].[Car]([BrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Car_DriveId]
    ON [dbo].[Car]([DriveId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Car_FuelTypeId]
    ON [dbo].[Car]([FuelTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Car_TransmissionId]
    ON [dbo].[Car]([TransmissionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Car_VehicleTypeId]
    ON [dbo].[Car]([VehicleTypeId] ASC);

