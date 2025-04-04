CREATE TABLE [dbo].[ClientSecrets] (
  [Id] [int] IDENTITY,
  [Description] [nvarchar](2000) NULL,
  [Value] [nvarchar](4000) NOT NULL,
  [Expiration] [datetime2] NULL,
  [Type] [nvarchar](250) NOT NULL,
  [Created] [datetime2] NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientSecrets_ClientId]
  ON [dbo].[ClientSecrets] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientSecrets]
  ADD CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO