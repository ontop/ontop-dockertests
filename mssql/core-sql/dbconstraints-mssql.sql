CREATE DATABASE [dbconstraints];
GO
USE [dbconstraints]
GO

CREATE TABLE [dbo].[Book](
	[bk_code] [int] NOT NULL,
	[bk_title] [varchar](100) NOT NULL
);

CREATE TABLE [dbo].[BookWriter](
	[bk_code] [int] NOT NULL,
	[wr_code] [int] NOT NULL
);

CREATE TABLE [dbo].[Edition](
	[ed_code] [int] NOT NULL,
	[ed_year] [int] NULL,
	[bk_code] [int] NULL
);

CREATE TABLE [dbo].[Writer](
	[wr_code] [int] NOT NULL,
	[wr_name] [varchar](100) NOT NULL
);

ALTER TABLE [dbo].[Book]
    ADD CONSTRAINT pk_book PRIMARY KEY (bk_code);
ALTER TABLE [dbo].[Edition]
    ADD CONSTRAINT pk_edition PRIMARY KEY (ed_code);
ALTER TABLE [dbo].[Writer]
    ADD CONSTRAINT [pk_writer] PRIMARY KEY (wr_code);
ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Book] FOREIGN KEY([bk_code])
    REFERENCES [dbo].[Book] ([bk_code]);
ALTER TABLE [dbo].[BookWriter]  WITH CHECK ADD  CONSTRAINT [FK_BookWriter_Writer] FOREIGN KEY([wr_code])
    REFERENCES [dbo].[Writer] ([wr_code]);
ALTER TABLE [dbo].[Edition]  WITH CHECK ADD  CONSTRAINT [FK_Edition_Book] FOREIGN KEY([bk_code])
    REFERENCES [dbo].[Book] ([bk_code]);