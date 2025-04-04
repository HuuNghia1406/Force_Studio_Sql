CREATE TABLE [dbo].[ApiSecrets] (
  [Id] [int] IDENTITY,
  [Description] [nvarchar](1000) NULL,
  [Value] [nvarchar](4000) NOT NULL,
  [Expiration] [datetime2] NULL,
  [Type] [nvarchar](250) NOT NULL,
  [Created] [datetime2] NOT NULL,
  [ApiResourceId] [int] NOT NULL,
  CONSTRAINT [PK_ApiSecrets] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ApiSecrets_ApiResourceId]
  ON [dbo].[ApiSecrets] ([ApiResourceId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApiSecrets]
  ADD CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResources] ([Id]) ON DELETE CASCADE
GO