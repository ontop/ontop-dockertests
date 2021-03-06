/****** Object:  Database [dbconstraints]    Script Date: 15.03.17 18:54:31 ******/
CREATE DATABASE [dbconstraints];
GO
USE [dbconstraints]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 15.03.17 18:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[bk_code] [int] NOT NULL,
	[bk_title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bk_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookWriter]    Script Date: 15.03.17 18:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookWriter](
	[bk_code] [int] NOT NULL,
	[wr_code] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Edition]    Script Date: 15.03.17 18:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Edition](
	[ed_code] [int] NOT NULL,
	[ed_year] [int] NULL,
	[bk_code] [int] NULL,
 CONSTRAINT [PK_Edition] PRIMARY KEY CLUSTERED 
(
	[ed_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Writer]    Script Date: 15.03.17 18:54:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Writer](
	[wr_code] [int] NOT NULL,
	[wr_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Writer] PRIMARY KEY CLUSTERED 
(
	[wr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Book] ([bk_code], [bk_title]) VALUES (100, N'The Beautiful Lamp')
INSERT [dbo].[Book] ([bk_code], [bk_title]) VALUES (101, N'The Missing Link')
INSERT [dbo].[Book] ([bk_code], [bk_title]) VALUES (102, N'Come and Get Me')
INSERT [dbo].[BookWriter] ([bk_code], [wr_code]) VALUES (100, 200)
INSERT [dbo].[BookWriter] ([bk_code], [wr_code]) VALUES (101, 201)
INSERT [dbo].[BookWriter] ([bk_code], [wr_code]) VALUES (102, 202)
INSERT [dbo].[BookWriter] ([bk_code], [wr_code]) VALUES (102, 202)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (1, 2001, 100)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (2, 2002, 100)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (3, 2008, 101)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (4, 2010, 102)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (5, 2011, 102)
INSERT [dbo].[Edition] ([ed_code], [ed_year], [bk_code]) VALUES (6, 2012, 102)
INSERT [dbo].[Writer] ([wr_code], [wr_name]) VALUES (200, N'Tommy Lie')
INSERT [dbo].[Writer] ([wr_code], [wr_name]) VALUES (201, N'Donald Duck')
INSERT [dbo].[Writer] ([wr_code], [wr_name]) VALUES (202, N'Homer Simpsons')
INSERT [dbo].[Writer] ([wr_code], [wr_name]) VALUES (203, N'Bart Simpsons')
ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Book] FOREIGN KEY([bk_code])
REFERENCES [dbo].[Book] ([bk_code])
GO
ALTER TABLE [dbo].[BookWriter] CHECK CONSTRAINT [FK_BookWriter_Book]
GO
ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Writer] FOREIGN KEY([wr_code])
REFERENCES [dbo].[Writer] ([wr_code])
GO
ALTER TABLE [dbo].[BookWriter] CHECK CONSTRAINT [FK_BookWriter_Writer]
GO
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [FK_Edition_Book] FOREIGN KEY([bk_code])
REFERENCES [dbo].[Book] ([bk_code])
GO
ALTER TABLE [dbo].[Edition] CHECK CONSTRAINT [FK_Edition_Book]
GO
USE [master]
GO
ALTER DATABASE [dbconstraints] SET  READ_WRITE 
GO
