CREATE TABLE [dbo].[IdentityClaims] (
  [Id] [int] IDENTITY,
  [Type] [nvarchar](200) NOT NULL,
  [IdentityResourceId] [int] NOT NULL,
  CONSTRAINT [PK_IdentityClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_IdentityClaims_IdentityResourceId]
  ON [dbo].[IdentityClaims] ([IdentityResourceId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[IdentityClaims]
  ADD CONSTRAINT [FK_IdentityClaims_IdentityResources_IdentityResourceId] FOREIGN KEY ([IdentityResourceId]) REFERENCES [dbo].[IdentityResources] ([Id]) ON DELETE CASCADE
GO