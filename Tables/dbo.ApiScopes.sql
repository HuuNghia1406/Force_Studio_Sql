CREATE TABLE [dbo].[ApiScopes] (
  [Id] [int] IDENTITY,
  [Name] [nvarchar](200) NOT NULL,
  [DisplayName] [nvarchar](200) NULL,
  [Description] [nvarchar](1000) NULL,
  [Required] [bit] NOT NULL,
  [Emphasize] [bit] NOT NULL,
  [ShowInDiscoveryDocument] [bit] NOT NULL,
  [ApiResourceId] [int] NOT NULL,
  CONSTRAINT [PK_ApiScopes] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ApiScopes_ApiResourceId]
  ON [dbo].[ApiScopes] ([ApiResourceId])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_ApiScopes_Name]
  ON [dbo].[ApiScopes] ([Name])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApiScopes]
  ADD CONSTRAINT [FK_ApiScopes_ApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResources] ([Id]) ON DELETE CASCADE
GO