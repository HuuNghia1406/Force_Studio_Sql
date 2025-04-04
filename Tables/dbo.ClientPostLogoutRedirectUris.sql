CREATE TABLE [dbo].[ClientPostLogoutRedirectUris] (
  [Id] [int] IDENTITY,
  [PostLogoutRedirectUri] [nvarchar](2000) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientPostLogoutRedirectUris_ClientId]
  ON [dbo].[ClientPostLogoutRedirectUris] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientPostLogoutRedirectUris]
  ADD CONSTRAINT [FK_ClientPostLogoutRedirectUris_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO