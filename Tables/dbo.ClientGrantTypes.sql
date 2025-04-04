CREATE TABLE [dbo].[ClientGrantTypes] (
  [Id] [int] IDENTITY,
  [GrantType] [nvarchar](250) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientGrantTypes] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientGrantTypes_ClientId]
  ON [dbo].[ClientGrantTypes] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientGrantTypes]
  ADD CONSTRAINT [FK_ClientGrantTypes_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO