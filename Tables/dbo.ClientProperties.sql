CREATE TABLE [dbo].[ClientProperties] (
  [Id] [int] IDENTITY,
  [Key] [nvarchar](250) NOT NULL,
  [Value] [nvarchar](2000) NOT NULL,
  [ClientId] [int] NOT NULL,
  CONSTRAINT [PK_ClientProperties] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_ClientProperties_ClientId]
  ON [dbo].[ClientProperties] ([ClientId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClientProperties]
  ADD CONSTRAINT [FK_ClientProperties_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
GO