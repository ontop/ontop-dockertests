/****** Object:  Database [questjunitdb]    Script Date: 03.03.17 15:57:25 ******/
CREATE DATABASE [questjunitdb];
GO
USE [questjunitdb]
GO
CREATE TABLE [dbo].[Frequency](
	[Attribute] [int] NULL,
	[DateTime] [datetime] NOT NULL,
	[Flag] [int] NULL,
	[MeasuredValue] [real] NULL,
	[TransCountry_ID] [int] NOT NULL,
 CONSTRAINT [PK_Frequency] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[TransCountry_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hairongdatatypes]    Script Date: 03.03.17 15:57:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hairongdatatypes](
	[decimal] [decimal](18, 2) NULL,
	[datetime] [datetime] NULL,
	[datetime27] [datetime2](7) NULL,
	[bit] [bit] NULL,
	[smallint] [smallint] NULL,
	[varchar4000] [varchar](max) NULL,
	[text] [text] NULL,
	[uuid] [uniqueidentifier] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D1AC0 AS DateTime), 1, 49.962, 1)
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D2678 AS DateTime), 1, 49.982, 1)
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D3230 AS DateTime), 1, 49.989, 1)
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D3DE8 AS DateTime), 1, 49.953, 1)
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D49A0 AS DateTime), 1, 49.944, 1)
INSERT [dbo].[Frequency] ([Attribute], [DateTime], [Flag], [MeasuredValue], [TransCountry_ID]) VALUES (706432201, CAST(0x0000A157009D5558 AS DateTime), 1, 49.943, 1)
INSERT [dbo].[hairongdatatypes] ([decimal], [datetime], [datetime27], [bit], [smallint], [varchar4000], [text], [uuid]) VALUES (CAST(12345.67 AS Decimal(18, 2)), CAST(0x00009964015A11C0 AS DateTime), CAST(0x0700881C05B0BF2E0B AS DateTime2), 1, 12345, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vestibulum, velit non blandit aliquet, lectus nisi auctor lacus, non mollis est augue vitae orci. Nulla pharetra mi a leo fermentum placerat. Maecenas posuere turpis eu lectus euismod eu sodales eros lobortis. Integer vel consequat metus. Donec massa sapien, volutpat vulputate egestas quis, ornare ut lacus. Mauris id mauris sapien, vitae luctus diam. Quisque dictum arcu dignissim lectus vulputate egestas. Proin eget magna justo. Ut dignissim lobortis ligula sed malesuada.', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vestibulum, velit non blandit aliquet, lectus nisi auctor lacus, non mollis est augue vitae orci. Nulla pharetra mi a leo fermentum placerat. Maecenas posuere turpis eu lectus euismod eu sodales eros lobortis. Integer vel consequat metus. Donec massa sapien, volutpat vulputate egestas quis, ornare ut lacus. Mauris id mauris sapien, vitae luctus diam. Quisque dictum arcu dignissim lectus vulputate egestas. Proin eget magna justo. Ut dignissim lobortis ligula sed malesuada.

Sed convallis, est a dictum vestibulum, ipsum velit scelerisque massa, nec interdum augue tortor et mauris. Mauris sollicitudin posuere massa eget hendrerit. Duis quam felis, egestas vitae elementum a, mattis sed lectus. Donec eu tortor tortor. Donec eget sapien massa, nec venenatis turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed vitae accumsan diam. Nullam eget dui eu urna malesuada luctus ac non justo. Vestibulum dignissim massa faucibus justo scelerisque rutrum. Quisque a commodo mauris. Cras lorem nisl, sagittis sit amet interdum in, feugiat ut purus.

Sed nisi velit, adipiscing at faucibus vitae, dictum quis nibh. Vivamus est elit, adipiscing et gravida sed, scelerisque a sem. Aliquam condimentum ultrices velit, ut vulputate erat mollis at. Praesent libero lectus, consequat id convallis et, posuere sit amet tellus. Aenean tortor massa, sodales nec sagittis nec, mollis ac leo. Sed tincidunt cursus felis id porttitor. Praesent in ipsum sed arcu ultrices varius quis quis nibh.

Morbi ullamcorper orci vel urna pretium ut consectetur nulla condimentum. Duis rutrum feugiat porta. Maecenas luctus odio et ipsum imperdiet consectetur elementum massa dictum. Proin condimentum mi vitae sem scelerisque ultricies. Suspendisse pretium hendrerit sodales. Sed commodo purus ut dui gravida fringilla porttitor sit amet urna. Proin sit amet fermentum sem.

Donec ut aliquam arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed orci lacus, ultricies quis fermentum quis, tempus in arcu. Sed cursus lobortis egestas. Nulla facilisi. Praesent fermentum erat eu lacus facilisis in imperdiet nisl sollicitudin. Proin sed felis sit amet tortor sollicitudin sagittis vel non mauris. Praesent massa magna, hendrerit ac lacinia gravida, scelerisque vel dolor. Aenean sollicitudin felis quis massa aliquet fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla vel dolor nibh. Pellentesque id dui nibh. Donec sit amet magna dolor, ut fermentum nulla. Aliquam erat volutpat. Ut auctor, diam id rutrum tincidunt, ante augue blandit nibh, sit amet eleifend turpis eros ullamcorper turpis. Phasellus molestie metus ac arcu ultricies varius.', N'21ec2020-3aea-1069-a2dd-08002b30309d')

