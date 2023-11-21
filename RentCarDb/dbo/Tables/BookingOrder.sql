CREATE TABLE [dbo].[BookingOrder] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [UserId]      NVARCHAR (450) NULL,
    [CarId]       INT            NOT NULL,
    [PickupDate]  DATETIME2 (7)  NOT NULL,
    [ReturnDate]  DATETIME2 (7)  NOT NULL,
    [TotalAmount] DECIMAL (8, 2) NOT NULL,
    [StatusId]    TINYINT        NOT NULL,
    CONSTRAINT [PK_BookingOrder] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BookingOrder_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_BookingOrder_Car_CarId] FOREIGN KEY ([CarId]) REFERENCES [dbo].[Car] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_BookingOrder_Status_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_BookingOrder_CarId]
    ON [dbo].[BookingOrder]([CarId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BookingOrder_StatusId]
    ON [dbo].[BookingOrder]([StatusId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_BookingOrder_UserId]
    ON [dbo].[BookingOrder]([UserId] ASC);

