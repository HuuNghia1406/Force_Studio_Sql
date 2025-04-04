CREATE TABLE [dbo].[ClientScopes] (
  [Id] [int] IDENTITY,
  [Scope] [nvarchar](200) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientScopes] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientScopes_ClientId]
  ON [dbo].[ClientScopes] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientScopes]
  ADD CONSTRAINT [FK_ClientScopes_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO