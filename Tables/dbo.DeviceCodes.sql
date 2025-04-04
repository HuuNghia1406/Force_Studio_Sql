CREATE TABLE [dbo].[DeviceCodes] (
  [UserCode] [nvarchar](200) NOT NULL,
  [DeviceCode] [nvarchar](200) NOT NULL,
  [SubjectId] [nvarchar](200) NULL,
  [ClientId] [nvarchar](200) NOT NULL,
  [CreationTime] [datetime2] NOT NULL,
  [Expiration] [datetime2] NOT NULL,
  [Data] [nvarchar](max) NOT NULL,
  CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED ([UserCode])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IX_DeviceCodes_DeviceCode]
  ON [dbo].[DeviceCodes] ([DeviceCode])
  ON [PRIMARY]
GO