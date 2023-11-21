CREATE TABLE [dbo].[CarViewModel] (
    [Id]             INT             IDENTITY (1, 1) NOT NULL,
    [CarName]        NVARCHAR (MAX)  NOT NULL,
    [Year]           INT             NOT NULL,
    [PricePerDay]    DECIMAL (18, 2) NOT NULL,
    [BrandId]        TINYINT         NOT NULL,
    [VehicleTypeId]  TINYINT         NOT NULL,
    [TransmissionId] TINYINT         NOT NULL,
    [DriveId]        TINYINT         NOT NULL,
    [FuelTypeId]     TINYINT         NOT NULL,
    [Image]          VARBINARY (MAX) NOT NULL,
    CONSTRAINT [PK_CarViewModel] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CarViewModel_Brand_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_CarViewModel_Drive_DriveId] FOREIGN KEY ([DriveId]) REFERENCES [dbo].[Drive] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_CarViewModel_FuelType_FuelTypeId] FOREIGN KEY ([FuelTypeId]) REFERENCES [dbo].[FuelType] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_CarViewModel_Transmission_TransmissionId] FOREIGN KEY ([TransmissionId]) REFERENCES [dbo].[Transmission] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_CarViewModel_VehicleType_VehicleTypeId] FOREIGN KEY ([VehicleTypeId]) REFERENCES [dbo].[VehicleType] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_CarViewModel_BrandId]
    ON [dbo].[CarViewModel]([BrandId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CarViewModel_DriveId]
    ON [dbo].[CarViewModel]([DriveId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CarViewModel_FuelTypeId]
    ON [dbo].[CarViewModel]([FuelTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CarViewModel_TransmissionId]
    ON [dbo].[CarViewModel]([TransmissionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_CarViewModel_VehicleTypeId]
    ON [dbo].[CarViewModel]([VehicleTypeId] ASC);

