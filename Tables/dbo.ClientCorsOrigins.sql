CREATE TABLE [dbo].[ClientCorsOrigins] (
  [Id] [int] IDENTITY,
  [Origin] [nvarchar](150) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientCorsOrigins] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientCorsOrigins_ClientId]
  ON [dbo].[ClientCorsOrigins] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientCorsOrigins]
  ADD CONSTRAINT [FK_ClientCorsOrigins_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO