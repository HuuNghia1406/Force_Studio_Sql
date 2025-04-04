CREATE TABLE [dbo].[PersistedGrants] (
  [Key] [nvarchar](200) NOT NULL,
  [Type] [nvarchar](50) NOT NULL,
  [SubjectId] [nvarchar](200) NULL,
  [ClientId] [nvarchar](200) NOT NULL,
  [CreationTime] [datetime2] NOT NULL,
  [Expiration] [datetime2] NULL,
  [Data] [nvarchar](max) NOT NULL,
  CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED ([Key])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_PersistedGrants_SubjectId_ClientId_Type]
  ON [dbo].[PersistedGrants] ([SubjectId], [ClientId], [Type])
  ON [PRIMARY]
GO