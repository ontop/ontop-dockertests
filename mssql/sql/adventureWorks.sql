CREATE DATABASE [AdventureWorksSmall];
GO
USE [AdventureWorksSmall]
GO
/****** Object:  Schema [Sales]    Script Date: 09.03.17 17:12:16 ******/
CREATE SCHEMA [Sales]
GO
/****** Object:  Table [Sales].[SpecialOffer]    Script Date: 09.03.17 17:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SpecialOffer](
	[SpecialOfferID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[DiscountPct] [smallmoney] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[MinQty] [int] NOT NULL,
	[MaxQty] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SpecialOffer_SpecialOfferID] PRIMARY KEY CLUSTERED 
(
	[SpecialOfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [Sales].[SpecialOffer] ON 

INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (1, N'No Discount', 0.0000, N'No Discount', N'No Discount', CAST(0x0000966600000000 AS DateTime), CAST(0x00009B8300000000 AS DateTime), 0, NULL, N'0290c4f5-191f-4337-ab6b-0a2dde03cbf9', CAST(0x0000964800000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (2, N'Volume Discount 11 to 14', 0.0200, N'Volume Discount', N'Reseller', CAST(0x0000968400000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 11, 14, N'd7542ee7-15db-4541-985c-5cc27aef26d6', CAST(0x0000966600000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (3, N'Volume Discount 15 to 24', 0.0500, N'Volume Discount', N'Reseller', CAST(0x0000968400000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 15, 24, N'4bdbcc01-8cf7-40a9-b643-40ec5b717491', CAST(0x0000966600000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (4, N'Volume Discount 25 to 40', 0.1000, N'Volume Discount', N'Reseller', CAST(0x0000968400000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 25, 40, N'504b5e85-8f3f-4ebc-9e1d-c1bc5dea9aa8', CAST(0x0000966600000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (5, N'Volume Discount 41 to 60', 0.1500, N'Volume Discount', N'Reseller', CAST(0x0000968400000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 41, 60, N'677e1d9d-944f-4e81-90e8-47eb0a82d48c', CAST(0x0000966600000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (6, N'Volume Discount over 60', 0.2000, N'Volume Discount', N'Reseller', CAST(0x0000968400000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 61, NULL, N'8157f569-4e8d-46b6-9347-5d0f726a9439', CAST(0x0000966600000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (7, N'Mountain-100 Clearance Sale', 0.3500, N'Discontinued Product', N'Reseller', CAST(0x000097C200000000 AS DateTime), CAST(0x000097F000000000 AS DateTime), 0, NULL, N'7df15bf5-6c05-47e7-80a4-22bd1ce59a72', CAST(0x000097A400000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (8, N'Sport Helmet Discount-2002', 0.1000, N'Seasonal Discount', N'Reseller', CAST(0x000097F100000000 AS DateTime), CAST(0x0000980F00000000 AS DateTime), 0, NULL, N'20c5d2cc-a38f-48f8-ac9a-8f15943e52ae', CAST(0x000097D300000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (9, N'Road-650 Overstock', 0.3000, N'Excess Inventory', N'Reseller', CAST(0x000097F100000000 AS DateTime), CAST(0x0000982E00000000 AS DateTime), 0, NULL, N'0cf8472b-f9e6-4945-9e09-549d7dde2198', CAST(0x000097D300000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (10, N'Mountain Tire Sale', 0.5000, N'Excess Inventory', N'Customer', CAST(0x0000994E00000000 AS DateTime), CAST(0x0000999A00000000 AS DateTime), 0, NULL, N'220444ad-2ef3-4e4c-87e9-3aa6ee39a877', CAST(0x0000993000000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (11, N'Sport Helmet Discount-2003', 0.1500, N'Seasonal Discount', N'Reseller', CAST(0x0000995E00000000 AS DateTime), CAST(0x0000997C00000000 AS DateTime), 0, NULL, N'e72dab1d-f44d-448b-9fe2-f259a2f0210d', CAST(0x0000994000000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (12, N'LL Road Frame Sale', 0.3500, N'Excess Inventory', N'Reseller', CAST(0x0000995E00000000 AS DateTime), CAST(0x0000998B00000000 AS DateTime), 0, NULL, N'c0af1c89-9722-4235-9248-3fba4d9e5841', CAST(0x0000994000000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (13, N'Touring-3000 Promotion', 0.1500, N'New Product', N'Reseller', CAST(0x0000995E00000000 AS DateTime), CAST(0x000099B900000000 AS DateTime), 0, NULL, N'5061cce4-e021-45a8-9a75-dfb36cbbce85', CAST(0x0000994000000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (14, N'Touring-1000 Promotion', 0.2000, N'New Product', N'Reseller', CAST(0x0000995E00000000 AS DateTime), CAST(0x000099B900000000 AS DateTime), 0, NULL, N'1af84a9e-a98c-4bd9-b48f-dc2b8b6b010b', CAST(0x0000994000000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (15, N'Half-Price Pedal Sale', 0.5000, N'Seasonal Discount', N'Customer', CAST(0x0000998B00000000 AS DateTime), CAST(0x000099AA00000000 AS DateTime), 0, NULL, N'03e3594d-6ebb-46a6-b8ee-a9289c0c2e47', CAST(0x0000996D00000000 AS DateTime))
INSERT [Sales].[SpecialOffer] ([SpecialOfferID], [Description], [DiscountPct], [Type], [Category], [StartDate], [EndDate], [MinQty], [MaxQty], [rowguid], [ModifiedDate]) VALUES (16, N'Mountain-500 Silver Clearance Sale', 0.4000, N'Discontinued Product', N'Reseller', CAST(0x00009A8F00000000 AS DateTime), CAST(0x00009ACB00000000 AS DateTime), 0, NULL, N'eb7cb484-bccf-4d2d-bf73-521b20014174', CAST(0x00009A7100000000 AS DateTime))
SET IDENTITY_INSERT [Sales].[SpecialOffer] OFF
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_DiscountPct]  DEFAULT ((0.00)) FOR [DiscountPct]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_MinQty]  DEFAULT ((0)) FOR [MinQty]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_rowguid]  DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD  CONSTRAINT [DF_SpecialOffer_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Sales].[SpecialOffer]  WITH CHECK ADD  CONSTRAINT [CK_SpecialOffer_DiscountPct] CHECK  (([DiscountPct]>=(0.00)))
GO
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_DiscountPct]
GO
ALTER TABLE [Sales].[SpecialOffer]  WITH CHECK ADD  CONSTRAINT [CK_SpecialOffer_EndDate] CHECK  (([EndDate]>=[StartDate]))
GO
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_EndDate]
GO
ALTER TABLE [Sales].[SpecialOffer]  WITH CHECK ADD  CONSTRAINT [CK_SpecialOffer_MaxQty] CHECK  (([MaxQty]>=(0)))
GO
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_MaxQty]
GO
ALTER TABLE [Sales].[SpecialOffer]  WITH CHECK ADD  CONSTRAINT [CK_SpecialOffer_MinQty] CHECK  (([MinQty]>=(0)))
GO
ALTER TABLE [Sales].[SpecialOffer] CHECK CONSTRAINT [CK_SpecialOffer_MinQty]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains objects related to customers, sales orders, and sales territories.' , @level0type=N'SCHEMA',@level0name=N'Sales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for SpecialOffer records.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'SpecialOfferID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount description.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount precentage.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'DiscountPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_DiscountPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount type category.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Group the discount applies to such as Reseller or Customer.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount start date.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Discount end date.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Minimum discount percent allowed.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Maximum discount percent allowed.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'MaxQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of NEWID()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'DF_SpecialOffer_ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sale discounts lookup table.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'PK_SpecialOffer_SpecialOfferID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [DiscountPct] >= (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'CK_SpecialOffer_DiscountPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [EndDate] >= [StartDate]' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'CK_SpecialOffer_EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [MaxQty] >= (0)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'CK_SpecialOffer_MaxQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [MinQty] >= (0)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SpecialOffer', @level2type=N'CONSTRAINT',@level2name=N'CK_SpecialOffer_MinQty'
GO
