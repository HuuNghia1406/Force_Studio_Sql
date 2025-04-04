CREATE TABLE [dbo].[Log] (
  [Id] [bigint] IDENTITY,
  [Message] [nvarchar](max) NULL,
  [MessageTemplate] [nvarchar](max) NULL,
  [Level] [nvarchar](128) NULL,
  [TimeStamp] [datetimeoffset] NOT NULL,
  [Exception] [nvarchar](max) NULL,
  [LogEvent] [nvarchar](max) NULL,
  [Properties] [nvarchar](max) NULL,
  CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO