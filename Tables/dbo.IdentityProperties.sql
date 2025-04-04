CREATE TABLE [dbo].[IdentityProperties] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](250) NOT NULL,
  [Value] [nvarchar](2000) NOT NULL,
  [IdentityResourceId] [int] NOT NULL,
  CONSTRAINT [PK_IdentityProperties] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_IdentityProperties_IdentityResourceId]
  ON [dbo].[IdentityProperties] ([IdentityResourceId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[IdentityProperties]
  ADD CONSTRAINT [FK_IdentityProperties_IdentityResources_IdentityResourceId] FOREIGN KEY ([IdentityResourceId]) REFERENCES [dbo].[IdentityResources] ([Id]) ON DELETE CASCADE
GO