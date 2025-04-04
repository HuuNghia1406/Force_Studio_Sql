CREATE TABLE [dbo].[ApiResources] (
  [Id] [int] IDENTITY,
  [Enabled] [bit] NOT NULL,
  [Name] [nvarchar](200) NOT NULL,
  [DisplayName] [nvarchar](200) NULL,
  [Description] [nvarchar](1000) NULL,
  [Created] [datetime2] NOT NULL,
  [Updated] [datetime2] NULL,
  [LastAccessed] [datetime2] NULL,
  [NonEditable] [bit] NOT NULL,
  CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_ApiResources_Name]
  ON [dbo].[ApiResources] ([Name])
  ON [PRIMARY]
GO