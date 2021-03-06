CREATE DATABASE [datatypes];
GO
USE [datatypes]
GO
/****** Object:  Table [dbo].[Boolean]    Script Date: 03.03.17 14:21:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boolean](
	[id] [int] NULL,
	[bit] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Character]    Script Date: 03.03.17 14:21:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Character](
	[id] [int] NOT NULL,
	[char] [char](10) NULL,
	[varchar] [varchar](50) NULL,
	[nchar] [nchar](10) NULL,
	[nvarchar] [nvarchar](50) NULL,
	[text] [text] NULL,
	[ntext] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DateTime]    Script Date: 03.03.17 14:21:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateTime](
	[id] [int] NOT NULL,
	[date] [date] NULL,
	[time] [time](7) NULL,
	[datetime] [datetime] NULL,
	[datetime2] [datetime2](7) NULL,
	[datetimeoffset] [datetimeoffset](7) NULL,
	[smalldatetime] [smalldatetime] NULL,
	[timestamp] [timestamp] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Numeric]    Script Date: 03.03.17 14:21:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Numeric](
	[id] [int] NULL,
	[decimal] [decimal](18, 0) NULL,
	[numeric] [numeric](18, 0) NULL,
	[bigint] [bigint] NULL,
	[int] [int] NULL,
	[smallint] [smallint] NULL,
	[tinyint] [tinyint] NULL,
	[real] [real] NULL,
	[float] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Others]    Script Date: 03.03.17 14:21:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Others](
	[id] [int] NULL,
	[binary] [binary](50) NULL,
	[image] [image] NULL,
	[money] [money] NULL,
	[smallmoney] [smallmoney] NULL,
	[uniqueidentifier] [uniqueidentifier] NULL,
	[hierarchyid] [hierarchyid] NULL,
	[varbinary] [varbinary](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Boolean] ([id], [bit]) VALUES (1, 1)
INSERT [dbo].[Boolean] ([id], [bit]) VALUES (2, 0)
INSERT [dbo].[Character] ([id], [char], [varchar], [nchar], [nvarchar], [text], [ntext]) VALUES (1, N'a         ', N'abc', N'a         ', N'abc', N'abc', N'abc')
INSERT [dbo].[DateTime] ([id], [date], [time], [datetime], [datetime2], [datetimeoffset], [smalldatetime]) VALUES (1, CAST(0xE0360B00 AS Date), CAST(0x070039C984550000 AS Time), CAST(0x0000A18500A822F8 AS DateTime), CAST(0x070039C98455E0360B AS DateTime2), CAST(0x070039C98455E0360B0000 AS DateTimeOffset), CAST(0xA1850264 AS SmallDateTime))
INSERT [dbo].[Numeric] ([id], [decimal], [numeric], [bigint], [int], [smallint], [tinyint], [real], [float]) VALUES (1, CAST(1 AS Decimal(18, 0)), CAST(1 AS Numeric(18, 0)), 1, 1, 1, 1, 1, 1)
