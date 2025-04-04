CREATE TABLE [dbo].[Clients] (
  [Id] [int] IDENTITY,
  [Enabled] [bit] NOT NULL,
  [ClientId] [nvarchar](200) NOT NULL,
  [ProtocolType] [nvarchar](200) NOT NULL,
  [RequireClientSecret] [bit] NOT NULL,
  [ClientName] [nvarchar](200) NULL,
  [Description] [nvarchar](1000) NULL,
  [ClientUri] [nvarchar](2000) NULL,
  [LogoUri] [nvarchar](2000) NULL,
  [RequireConsent] [bit] NOT NULL,
  [AllowRememberConsent] [bit] NOT NULL,
  [AlwaysIncludeUserClaimsInIdToken] [bit] NOT NULL,
  [RequirePkce] [bit] NOT NULL,
  [AllowPlainTextPkce] [bit] NOT NULL,
  [AllowAccessTokensViaBrowser] [bit] NOT NULL,
  [FrontChannelLogoutUri] [nvarchar](2000) NULL,
  [FrontChannelLogoutSessionRequired] [bit] NOT NULL,
  [BackChannelLogoutUri] [nvarchar](2000) NULL,
  [BackChannelLogoutSessionRequired] [bit] NOT NULL,
  [AllowOfflineAccess] [bit] NOT NULL,
  [IdentityTokenLifetime] [int] NOT NULL,
  [AccessTokenLifetime] [int] NOT NULL,
  [AuthorizationCodeLifetime] [int] NOT NULL,
  [ConsentLifetime] [int] NULL,
  [AbsoluteRefreshTokenLifetime] [int] NOT NULL,
  [SlidingRefreshTokenLifetime] [int] NOT NULL,
  [RefreshTokenUsage] [int] NOT NULL,
  [UpdateAccessTokenClaimsOnRefresh] [bit] NOT NULL,
  [RefreshTokenExpiration] [int] NOT NULL,
  [AccessTokenType] [int] NOT NULL,
  [EnableLocalLogin] [bit] NOT NULL,
  [IncludeJwtId] [bit] NOT NULL,
  [AlwaysSendClientClaims] [bit] NOT NULL,
  [ClientClaimsPrefix] [nvarchar](200) NULL,
  [PairWiseSubjectSalt] [nvarchar](200) NULL,
  [Created] [datetime2] NOT NULL,
  [Updated] [datetime2] NULL,
  [LastAccessed] [datetime2] NULL,
  [UserSsoLifetime] [int] NULL,
  [UserCodeType] [nvarchar](100) NULL,
  [DeviceCodeLifetime] [int] NOT NULL,
  [NonEditable] [bit] NOT NULL,
  CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_Clients_ClientId]
  ON [dbo].[Clients] ([ClientId])
  ON [PRIMARY]
GO