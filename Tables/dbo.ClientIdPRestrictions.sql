CREATE TABLE [dbo].[ClientIdPRestrictions] (
  [Id] [int] IDENTITY,
  [Provider] [nvarchar](200) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientIdPRestrictions] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientIdPRestrictions_ClientId]
  ON [dbo].[ClientIdPRestrictions] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientIdPRestrictions]
  ADD CONSTRAINT [FK_ClientIdPRestrictions_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO