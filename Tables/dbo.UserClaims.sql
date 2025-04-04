CREATE TABLE [dbo].[UserClaims] (
  [Id] [int] IDENTITY,
  [UserId] [nvarchar](450) NOT NULL,
  [ClaimType] [nvarchar](max) NULL,
  [ClaimValue] [nvarchar](max) NULL,
  CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_UserClaims_UserId]
  ON [dbo].[UserClaims] ([UserId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserClaims]
  ADD CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
GO