CREATE DATABASE [dbconstraints];
GO
USE [dbconstraints]
GO

CREATE TABLE [dbo].[Book](
	[bk_code] [int] NOT NULL,
	[bk_title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bk_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[BookWriter](
	[bk_code] [int] NOT NULL,
	[wr_code] [int] NOT NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Book] FOREIGN KEY([bk_code])
REFERENCES [dbo].[Book] ([bk_code])
ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Writer] FOREIGN KEY([wr_code])
REFERENCES [dbo].[Writer] ([wr_code])


CREATE TABLE [dbo].[Edition](
	[ed_code] [int] NOT NULL,
	[ed_year] [int] NULL,
	[bk_code] [int] NULL,
 CONSTRAINT [PK_Edition] PRIMARY KEY CLUSTERED 
(
	[ed_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [FK_Edition_Book] FOREIGN KEY([bk_code])
REFERENCES [dbo].[Book] ([bk_code])

CREATE TABLE [dbo].[Writer](
	[wr_code] [int] NOT NULL,
	[wr_name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Writer] PRIMARY KEY CLUSTERED 
(
	[wr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

