CREATE TABLE [dbo].[ClientRedirectUris] (
  [Id] [int] IDENTITY,
  [RedirectUri] [nvarchar](2000) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientRedirectUris] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientRedirectUris_ClientId]
  ON [dbo].[ClientRedirectUris] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientRedirectUris]
  ADD CONSTRAINT [FK_ClientRedirectUris_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO