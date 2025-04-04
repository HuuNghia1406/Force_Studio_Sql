CREATE TABLE [dbo].[ApiScopeClaims] (
  [Id] [int] IDENTITY,
  [Type] [nvarchar](200) NOT NULL,
  [ApiScopeId] [int] NOT NULL,
  CONSTRAINT [PK_ApiScopeClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ApiScopeClaims_ApiScopeId]
  ON [dbo].[ApiScopeClaims] ([ApiScopeId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApiScopeClaims]
  ADD CONSTRAINT [FK_ApiScopeClaims_ApiScopes_ApiScopeId] FOREIGN KEY ([ApiScopeId]) REFERENCES [dbo].[ApiScopes] ([Id]) ON DELETE CASCADE
GO