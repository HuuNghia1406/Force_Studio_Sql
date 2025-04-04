CREATE TABLE [dbo].[UserRoles] (
  [UserId] [nvarchar](450) NOT NULL,
  [RoleId] [nvarchar](450) NOT NULL,
  CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_UserRoles_RoleId]
  ON [dbo].[UserRoles] ([RoleId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserRoles]
  ADD CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[UserRoles]
  ADD CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
GO