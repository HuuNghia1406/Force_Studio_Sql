CREATE TABLE [dbo].[ApiClaims] (
  [Id] [int] IDENTITY,
  [Type] [nvarchar](200) NOT NULL,
  [ApiResourceId] [int] NOT NULL,
  CONSTRAINT [PK_ApiClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ApiClaims_ApiResourceId]
  ON [dbo].[ApiClaims] ([ApiResourceId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApiClaims]
  ADD CONSTRAINT [FK_ApiClaims_ApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResources] ([Id]) ON DELETE CASCADE
GO