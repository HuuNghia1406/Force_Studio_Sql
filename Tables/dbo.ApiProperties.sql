CREATE TABLE [dbo].[ApiProperties] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](250) NOT NULL,
  [Value] [nvarchar](2000) NOT NULL,
  [ApiResourceId] [int] NOT NULL,
  CONSTRAINT [PK_ApiProperties] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ApiProperties_ApiResourceId]
  ON [dbo].[ApiProperties] ([ApiResourceId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApiProperties]
  ADD CONSTRAINT [FK_ApiProperties_ApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResources] ([Id]) ON DELETE CASCADE
GO