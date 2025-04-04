CREATE TABLE [dbo].[ClientClaims] (
  [Id] [int] IDENTITY,
  [Type] [nvarchar](250) NOT NULL,
  [Value] [nvarchar](250) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientClaims_ClientId]
  ON [dbo].[ClientClaims] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientClaims]
  ADD CONSTRAINT [FK_ClientClaims_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO