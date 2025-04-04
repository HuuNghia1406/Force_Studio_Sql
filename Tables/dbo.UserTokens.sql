CREATE TABLE [dbo].[UserTokens] (
  [UserId] [nvarchar](450) NOT NULL,
  [LoginProvider] [nvarchar](450) NOT NULL,
  [Name] [nvarchar](450) NOT NULL,
  [Value] [nvarchar](max) NULL,
  CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserTokens]
  ADD CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
GO