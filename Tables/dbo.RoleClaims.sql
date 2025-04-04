CREATE TABLE [dbo].[RoleClaims] (
  [Id] [int] IDENTITY,
  [RoleId] [nvarchar](450) NOT NULL,
  [ClaimType] [nvarchar](max) NULL,
  [ClaimValue] [nvarchar](max) NULL,
  CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_RoleClaims_RoleId]
  ON [dbo].[RoleClaims] ([RoleId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[RoleClaims]
  ADD CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]) ON DELETE CASCADE
GO