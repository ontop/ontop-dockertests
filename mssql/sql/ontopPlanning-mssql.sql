CREATE DATABASE [ontopPlanning];
GO
USE [ontopPlanning]
GO
/****** Object:  Table [dbo].[SpecialOffer]    Script Date: 03.03.17 15:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialOffer](
	[SpecialOfferID] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecialOfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Travel]    Script Date: 03.03.17 15:39:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Travel](
	[ID] [int] NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Price] [int] NULL,
	[Description] [text] NULL,
	[StartDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SpecialOffer] ([SpecialOfferID], [ModifiedDate]) VALUES (1, CAST(0x0000964800000000 AS DateTime))
INSERT [dbo].[SpecialOffer] ([SpecialOfferID], [ModifiedDate]) VALUES (2, CAST(0x0000A61C00E6B680 AS DateTime))
INSERT [dbo].[SpecialOffer] ([SpecialOfferID], [ModifiedDate]) VALUES (3, CAST(0x0000A1DE00000000 AS DateTime))
INSERT [dbo].[Travel] ([ID], [Name], [Price], [Description], [StartDate]) VALUES (1, N'Gaeta', 1200, N'Conference', CAST(0x0000964800000000 AS DateTime))
