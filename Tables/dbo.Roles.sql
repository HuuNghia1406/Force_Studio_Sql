CREATE TABLE [dbo].[Roles] (
  [Id] [nvarchar](450) NOT NULL,
  [Name] [nvarchar](256) NULL,
  [NormalizedName] [nvarchar](256) NULL,
  [ConcurrencyStamp] [nvarchar](max) NULL,
  CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [RoleNameIndex]
  ON [dbo].[Roles] ([NormalizedName])
  WHERE ([NormalizedName] IS NOT NULL)
  ON [PRIMARY]
GO