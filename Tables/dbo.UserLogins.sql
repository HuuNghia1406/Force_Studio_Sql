CREATE TABLE [dbo].[UserLogins] (
  [LoginProvider] [nvarchar](450) NOT NULL,
  [ProviderKey] [nvarchar](450) NOT NULL,
  [ProviderDisplayName] [nvarchar](max) NULL,
  [UserId] [nvarchar](450) NOT NULL,
  CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_UserLogins_UserId]
  ON [dbo].[UserLogins] ([UserId])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserLogins]
  ADD CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
GO