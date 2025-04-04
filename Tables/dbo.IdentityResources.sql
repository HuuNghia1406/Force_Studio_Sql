CREATE TABLE [dbo].[IdentityResources] (
  [Id] [int] IDENTITY,
  [Enabled] [bit] NOT NULL,
  [Name] [nvarchar](200) NOT NULL,
  [DisplayName] [nvarchar](200) NULL,
  [Description] [nvarchar](1000) NULL,
  [Required] [bit] NOT NULL,
  [Emphasize] [bit] NOT NULL,
  [ShowInDiscoveryDocument] [bit] NOT NULL,
  [Created] [datetime2] NOT NULL,
  [Updated] [datetime2] NULL,
  [NonEditable] [bit] NOT NULL,
  CONSTRAINT [PK_IdentityResources] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_IdentityResources_Name]
  ON [dbo].[IdentityResources] ([Name])
  ON [PRIMARY]
GO