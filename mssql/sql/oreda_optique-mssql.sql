/****** Object:  Database [OREDA_OPTIQUE]    Script Date: 03.03.17 15:42:20 ******/
CREATE DATABASE [OREDA_OPTIQUE];
GO
USE [OREDA_OPTIQUE]
GO
/****** Object:  Schema [dc]    Script Date: 03.03.17 15:42:20 ******/
CREATE SCHEMA [dc]
GO
/****** Object:  Schema [oreda]    Script Date: 03.03.17 15:42:20 ******/
CREATE SCHEMA [oreda]
GO
/****** Object:  Table [dc].[attribute]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[attribute](
	[attr_field] [varchar](16) NOT NULL,
	[attr_desc] [varchar](64) NULL,
	[attr_type] [varchar](1) NULL,
	[attr_label] [varchar](32) NULL,
	[attr_size] [int] NULL,
	[attr_unit] [varchar](12) NULL,
	[attr_active] [varchar](1) NULL,
	[attr_max] [int] NULL,
	[attr_min] [int] NULL,
	[attr_format] [varchar](12) NULL,
 CONSTRAINT [PK_attribute] PRIMARY KEY CLUSTERED 
(
	[attr_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[attribute_code]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[attribute_code](
	[attr_code] [varchar](12) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[attr_code_desc] [varchar](64) NULL,
	[attr_code_active] [varchar](1) NULL,
 CONSTRAINT [PK_attribute_code] PRIMARY KEY CLUSTERED 
(
	[attr_code] ASC,
	[attr_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[attribute_list_codes]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[attribute_list_codes](
	[attr_class] [varchar](1) NOT NULL,
	[attr_source] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[attr_code] [varchar](12) NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[attr_code_desc] [varchar](64) NULL,
	[attr_code_comment] [varchar](64) NULL,
	[active] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[attribute_lists]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[attribute_lists](
	[attr_class] [varchar](1) NOT NULL,
	[attr_source] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[display_order] [int] NULL,
	[data_requirement] [varchar](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[attributes]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[attributes](
	[attr_class] [varchar](1) NOT NULL,
	[attr_source] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[attr_desc] [varchar](64) NULL,
	[attr_type] [varchar](1) NULL,
	[attr_label] [varchar](32) NULL,
	[attr_unit] [varchar](12) NULL,
	[attr_min] [int] NULL,
	[attr_max] [int] NULL,
	[attr_format] [varchar](12) NULL,
	[active] [varchar](1) NULL,
	[anonymise] [varchar](1) NULL,
 CONSTRAINT [PK_attributes] PRIMARY KEY CLUSTERED 
(
	[attr_class] ASC,
	[attr_source] ASC,
	[attr_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[climate]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[climate](
	[climate_code] [varchar](12) NOT NULL,
	[climate_desc] [varchar](64) NULL,
	[climate_active] [varchar](1) NULL,
 CONSTRAINT [PK_climate] PRIMARY KEY CLUSTERED 
(
	[climate_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[components]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[components](
	[comp_code] [varchar](10) NOT NULL,
	[comp_desc] [varchar](50) NULL,
	[comp_icon] [varchar](12) NULL,
	[active] [varchar](1) NULL,
 CONSTRAINT [PK_components] PRIMARY KEY CLUSTERED 
(
	[comp_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[design_class]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[design_class](
	[dc_code] [varchar](2) NOT NULL,
	[dc_desc] [varchar](64) NULL,
	[dc_active] [varchar](1) NULL,
 CONSTRAINT [PK_design_class] PRIMARY KEY CLUSTERED 
(
	[dc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_design_class]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_design_class](
	[ec_code] [varchar](2) NOT NULL,
	[dc_code] [varchar](2) NOT NULL,
 CONSTRAINT [PK_ec_design_class] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[dc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_failure_mode]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_failure_mode](
	[ec_code] [varchar](2) NOT NULL,
	[fm_code] [varchar](3) NOT NULL,
	[ec_fm_comments] [varchar](64) NULL,
 CONSTRAINT [PK_ec_failure_mode] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[fm_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_fm_sc]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_fm_sc](
	[ec_code] [varchar](2) NOT NULL,
	[fm_code] [varchar](3) NOT NULL,
	[sc_code] [varchar](1) NOT NULL,
	[fm_sc_opt] [varchar](1) NULL,
 CONSTRAINT [PK_ec_fm_sc] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[fm_code] ASC,
	[sc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_su_maint_item]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_su_maint_item](
	[ec_code] [varchar](2) NOT NULL,
	[mi_code] [varchar](10) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ec_su_maint_item] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[mi_code] ASC,
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_sub]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_sub](
	[ec_code] [varchar](2) NOT NULL,
	[sub_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ec_sub] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[sub_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_sub_comp]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_sub_comp](
	[ec_code] [varchar](2) NOT NULL,
	[sub_code] [varchar](10) NOT NULL,
	[comp_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ec_sub_comp] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[sub_code] ASC,
	[comp_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_sub_unit]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_sub_unit](
	[ec_code] [varchar](2) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ec_sub_unit] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[ec_system]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[ec_system](
	[ec_code] [varchar](2) NOT NULL,
	[sys_code] [varchar](2) NOT NULL,
 CONSTRAINT [PK_ec_system] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC,
	[sys_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[elc_statuses]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[elc_statuses](
	[elc_status_id] [int] NOT NULL,
	[elc_table_id] [int] NULL,
	[elc_status_desc] [varchar](64) NULL,
	[elc_status] [varchar](3) NULL,
	[elc_status_f1] [varchar](18) NULL,
	[elc_status_f2] [varchar](18) NULL,
	[elc_status_f3] [varchar](18) NULL,
	[elc_status_f4] [varchar](18) NULL,
	[elc_status_f5] [varchar](18) NULL,
	[elc_status_def] [varchar](1) NULL,
	[elc_status_edit] [varchar](1) NULL,
	[elc_status_active] [varchar](1) NULL,
	[elc_status_test] [varchar](16) NULL,
 CONSTRAINT [PK_elc_statuses] PRIMARY KEY CLUSTERED 
(
	[elc_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[equip_class]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[equip_class](
	[ec_code] [varchar](2) NOT NULL,
	[ec_desc] [varchar](64) NULL,
	[ec_active] [varchar](1) NULL,
	[ec_main_class] [varchar](1) NULL,
	[ec_sub_class] [varchar](2) NULL,
	[ec_seq_no] [int] NULL,
	[ec_boundary_help_no] [int] NULL,
 CONSTRAINT [PK_equip_class] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[equip_classes]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[equip_classes](
	[ec_code] [varchar](2) NOT NULL,
	[ec_desc] [varchar](32) NULL,
	[ec_icon] [varchar](12) NULL,
	[active] [varchar](1) NULL,
 CONSTRAINT [PK_equip_classes] PRIMARY KEY CLUSTERED 
(
	[ec_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[failure_cause]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[failure_cause](
	[fcause_no] [varchar](2) NOT NULL,
	[fcause_notation] [varchar](64) NULL,
	[fcause_priority] [varchar](1) NULL,
	[fcause_active] [varchar](1) NULL,
	[fcause_examples] [varchar](128) NULL,
 CONSTRAINT [PK_failure_cause] PRIMARY KEY CLUSTERED 
(
	[fcause_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[failure_consequence]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[failure_consequence](
	[fc_code] [varchar](8) NOT NULL,
	[fc_definition] [varchar](64) NULL,
	[fc_active] [varchar](1) NULL,
 CONSTRAINT [PK_failure_consequence] PRIMARY KEY CLUSTERED 
(
	[fc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[failure_cost]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dc].[failure_cost](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[fail_id] [int] NOT NULL,
	[gas_deferment] [float] NULL,
	[gas_deferment_rate] [float] NULL,
	[gas_deferment_cost] [float] NULL,
	[oil_deferment] [float] NULL,
	[oil_deferment_rate] [float] NULL,
	[oil_deferment_cost] [float] NULL,
	[water_deferment] [float] NULL,
	[water_deferment_rate] [float] NULL,
	[water_deferment_cost] [float] NULL,
	[deferment_cost] [float] NULL,
	[intervention_cost] [float] NULL,
	[total_cost] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dc].[failure_mode]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[failure_mode](
	[fm_code] [varchar](3) NOT NULL,
	[fm_definition] [varchar](64) NULL,
	[fm_active] [varchar](1) NULL,
 CONSTRAINT [PK_failure_mode] PRIMARY KEY CLUSTERED 
(
	[fm_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[hierarchy]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[hierarchy](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[parent_inv_item_id] [int] NULL,
	[parent_sub_item_id] [int] NULL,
	[item_label1] [varchar](64) NULL,
	[item_label2] [varchar](64) NULL,
	[item_label3] [varchar](64) NULL,
	[item_label4] [varchar](64) NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[active] [varchar](1) NULL,
	[qa_status] [varchar](2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[history]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[history](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[start_date] [smalldatetime] NOT NULL,
	[start_reason] [varchar](8) NULL,
	[start_propflag] [varchar](1) NULL,
	[end_date] [smalldatetime] NULL,
	[end_reason] [varchar](8) NULL,
	[end_propflag] [varchar](1) NULL,
	[item_count] [int] NOT NULL,
	[demand_count] [int] NULL,
	[add_info] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[inst_category]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[inst_category](
	[ic_code] [varchar](12) NOT NULL,
	[ic_desc] [varchar](64) NULL,
	[ic_active] [varchar](1) NULL,
 CONSTRAINT [PK_inst_category] PRIMARY KEY CLUSTERED 
(
	[ic_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[item]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[item](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[fail_id] [int] NOT NULL,
	[maint_id] [int] NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[add_info] [varchar](2000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[item_data]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[item_data](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[fail_id] [int] NOT NULL,
	[maint_id] [int] NOT NULL,
	[attr_class] [varchar](1) NOT NULL,
	[attr_source] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[value_char] [varchar](64) NULL,
	[value_numb] [float] NULL,
	[value_date] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[main_system]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[main_system](
	[ms_code] [varchar](2) NOT NULL,
	[ms_desc] [varchar](64) NULL,
	[ms_active] [varchar](1) NULL,
 CONSTRAINT [PK_main_system] PRIMARY KEY CLUSTERED 
(
	[ms_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[maint_activity_code]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[maint_activity_code](
	[mac_code] [varchar](8) NOT NULL,
	[mc_code] [varchar](8) NOT NULL,
	[mac_definition] [varchar](512) NULL,
	[mac_active] [varchar](1) NULL,
	[mac_examples] [varchar](128) NULL,
 CONSTRAINT [PK_maint_activity_code] PRIMARY KEY CLUSTERED 
(
	[mac_code] ASC,
	[mc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[maint_category]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[maint_category](
	[mc_code] [varchar](8) NOT NULL,
	[mc_definition] [varchar](64) NULL,
	[mc_active] [varchar](1) NULL,
	[mc_unit] [varchar](8) NULL,
	[mc_type] [varchar](1) NULL,
 CONSTRAINT [PK_maint_category] PRIMARY KEY CLUSTERED 
(
	[mc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[maint_item]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[maint_item](
	[mi_code] [varchar](10) NOT NULL,
	[mi_desc] [varchar](64) NULL,
	[mi_active] [varchar](1) NULL,
 CONSTRAINT [PK_maint_item] PRIMARY KEY CLUSTERED 
(
	[mi_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[oper_mode]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[oper_mode](
	[op_code] [varchar](12) NOT NULL,
	[op_desc] [varchar](64) NULL,
	[op_type] [varchar](1) NULL,
	[op_active] [varchar](1) NULL,
 CONSTRAINT [PK_oper_mode] PRIMARY KEY CLUSTERED 
(
	[op_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[owner]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[owner](
	[owner_id] [int] NOT NULL,
	[owner_name] [varchar](32) NULL,
	[owner_logo] [varchar](64) NULL,
 CONSTRAINT [PK_owner] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[severity_class]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[severity_class](
	[sc_code] [varchar](1) NOT NULL,
	[sc_term] [varchar](12) NULL,
	[sc_desc] [varchar](64) NULL,
	[sc_active] [varchar](1) NULL,
 CONSTRAINT [PK_severity_class] PRIMARY KEY CLUSTERED 
(
	[sc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[sub_unit]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[sub_unit](
	[su_code] [varchar](10) NOT NULL,
	[su_desc] [varchar](64) NULL,
	[su_active] [varchar](1) NULL,
 CONSTRAINT [PK_sub_unit] PRIMARY KEY CLUSTERED 
(
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dc].[subunits]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dc].[subunits](
	[sub_code] [varchar](10) NOT NULL,
	[sub_desc] [varchar](50) NULL,
	[sub_icon] [varchar](12) NULL,
	[active] [varchar](1) NULL,
 CONSTRAINT [PK_subunits] PRIMARY KEY CLUSTERED 
(
	[sub_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[failure_event]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[failure_event](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[f_id] [int] NOT NULL,
	[ec_code] [varchar](2) NULL,
	[su_code] [varchar](10) NULL,
	[fcause_no] [varchar](2) NULL,
	[sc_code] [varchar](1) NULL,
	[elc_status_id] [int] NULL,
	[fm_code] [varchar](3) NULL,
	[fd_no] [varchar](2) NULL,
	[rem_code] [varchar](8) NULL,
	[fc_code] [varchar](8) NULL,
	[om_code] [varchar](8) NULL,
	[i_id] [int] NULL,
	[f_wo_no] [varchar](12) NULL,
	[f_detected_date] [smalldatetime] NULL,
	[f_add_info] [varchar](2000) NULL,
	[merged_i_id] [int] NULL,
	[merged_ec_code] [varchar](2) NULL,
	[oreda_phase] [float] NULL,
	[company_phase] [float] NULL,
 CONSTRAINT [PK_failure_event] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[f_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[failure_item]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[failure_item](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[f_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[mi_code] [varchar](10) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_failure_item] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[f_id] ASC,
	[mi_code] ASC,
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[hierarchy]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[hierarchy](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[parent_inv_item_id] [int] NULL,
	[parent_sub_item_id] [int] NULL,
	[item_label1] [varchar](64) NULL,
	[item_label2] [varchar](64) NULL,
	[item_label3] [varchar](64) NULL,
	[item_label4] [varchar](64) NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[active] [varchar](1) NULL,
	[qa_status] [varchar](2) NULL,
 CONSTRAINT [PK_hierarchy] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[history]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[history](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[start_date] [smalldatetime] NOT NULL,
	[start_reason] [varchar](8) NULL,
	[start_propflag] [varchar](1) NULL,
	[end_date] [smalldatetime] NULL,
	[end_reason] [varchar](8) NULL,
	[end_propflag] [varchar](1) NULL,
	[item_count] [int] NOT NULL,
	[demand_count] [int] NULL,
	[add_info] [varchar](200) NULL,
 CONSTRAINT [PK_history] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[item_id] ASC,
	[start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[installation]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[installation](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[ic_code] [varchar](12) NULL,
	[oc_code] [varchar](12) NULL,
	[climate_code] [varchar](12) NULL,
	[i_source] [varchar](12) NULL,
	[inst_name] [varchar](25) NULL,
	[inst_last_i_id] [int] NULL,
	[inst_last_f_id] [int] NULL,
	[inst_last_m_id] [int] NULL,
	[inst_i_collected_by] [varchar](32) NULL,
	[inst_f_collected_by] [varchar](32) NULL,
	[inst_m_collected_by] [varchar](32) NULL,
	[inst_remarks] [varchar](2000) NULL,
	[m_source] [varchar](12) NULL,
	[f_source] [varchar](12) NULL,
	[inst_i_checked_by] [varchar](32) NULL,
	[inst_f_checked_by] [varchar](32) NULL,
	[inst_m_checked_by] [varchar](32) NULL,
	[inst_surv_start] [smalldatetime] NULL,
	[inst_surv_end] [smalldatetime] NULL,
 CONSTRAINT [PK_installation] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[inv_instr]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[inv_instr](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[measur_char_id] [varchar](2) NOT NULL,
	[inv_inst_trip] [int] NULL,
	[inv_inst_alarms] [int] NULL,
	[inv_inst_control] [int] NULL,
 CONSTRAINT [PK_inv_instr] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[measur_char_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[inv_spec]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[inv_spec](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[inv_spec_char] [varchar](32) NULL,
	[inv_spec_numb1] [float] NULL,
	[inv_spec_numb2] [float] NULL,
	[inv_spec_date] [smalldatetime] NULL,
 CONSTRAINT [PK_inv_spec] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[attr_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[inv_sub_unit]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[inv_sub_unit](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
	[isu_tag_no] [varchar](22) NULL,
	[isu_no_installed] [int] NULL,
 CONSTRAINT [PK_inv_sub_unit] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[inventory]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[inventory](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[dc_code] [varchar](2) NULL,
	[sys_code] [varchar](2) NULL,
	[op_code] [varchar](12) NULL,
	[ee_code] [varchar](12) NULL,
	[elc_status_id] [int] NULL,
	[ec_code] [varchar](2) NULL,
	[i_checked_by] [varchar](4) NULL,
	[i_checked_date] [smalldatetime] NULL,
	[i_equip_desc] [varchar](64) NULL,
	[i_tag_no] [varchar](22) NULL,
	[i_manufact] [varchar](64) NULL,
	[i_model] [varchar](20) NULL,
	[i_manufact_ctrl_sys] [varchar](64) NULL,
	[i_surv_start_date] [smalldatetime] NULL,
	[i_surv_end_date] [smalldatetime] NULL,
	[i_oper_time] [float] NULL,
	[i_oper_time_code] [varchar](4) NULL,
	[i_no_of_starts] [float] NULL,
	[i_installed_date] [smalldatetime] NULL,
	[i_scrapped_at_end] [varchar](1) NULL,
	[i_subsea_cs] [varchar](2) NULL,
	[i_remarks] [varchar](2000) NULL,
	[i_phase] [int] NULL,
	[i_unique_no] [varchar](22) NULL,
	[merged_i_id] [int] NULL,
	[merged_ec_code] [varchar](2) NULL,
 CONSTRAINT [PK_inventory] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[inventory_history]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[inventory_history](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[i_surv_start_date] [smalldatetime] NOT NULL,
	[i_surv_end_date] [smalldatetime] NULL,
	[i_oper_time] [float] NULL,
	[i_oper_time_code] [varchar](4) NULL,
	[i_no_of_starts] [float] NULL,
	[i_oreda_phase] [float] NULL,
	[i_company_phase] [float] NULL,
	[ec_code] [varchar](2) NULL,
 CONSTRAINT [PK_inventory_history] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[i_surv_start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[item]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[item](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[fail_id] [int] NOT NULL,
	[maint_id] [int] NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[add_info] [varchar](2000) NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[item_id] ASC,
	[fail_id] ASC,
	[maint_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[item_data]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[item_data](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[fail_id] [int] NOT NULL,
	[maint_id] [int] NOT NULL,
	[attr_class] [varchar](1) NOT NULL,
	[attr_source] [varchar](2) NOT NULL,
	[attr_field] [varchar](16) NOT NULL,
	[ec_code] [varchar](2) NULL,
	[sub_code] [varchar](10) NULL,
	[comp_code] [varchar](10) NULL,
	[value_char] [varchar](64) NULL,
	[value_numb] [float] NULL,
	[value_date] [smalldatetime] NULL,
 CONSTRAINT [PK_item_data] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[item_id] ASC,
	[fail_id] ASC,
	[maint_id] ASC,
	[attr_class] ASC,
	[attr_source] ASC,
	[attr_field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[m_maint_items]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[m_maint_items](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[m_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[mi_code] [varchar](10) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
 CONSTRAINT [PK_m_maint_items] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[m_id] ASC,
	[mi_code] ASC,
	[su_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[maint_event]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[maint_event](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[m_id] [int] NOT NULL,
	[mc_code] [varchar](8) NULL,
	[elc_status_id] [int] NULL,
	[su_code] [varchar](10) NULL,
	[mac_code] [varchar](8) NULL,
	[rem_code] [varchar](8) NULL,
	[ec_code] [varchar](2) NULL,
	[f_id] [int] NULL,
	[i_id] [int] NULL,
	[m_maint_date] [smalldatetime] NULL,
	[m_mec_manhour] [float] NULL,
	[m_el_manhour] [float] NULL,
	[m_inst_manhour] [float] NULL,
	[m_other_manhour] [float] NULL,
	[m_res_drill_rig] [float] NULL,
	[m_res_diving_vessel] [float] NULL,
	[m_res_service_vessel] [float] NULL,
	[m_res_divers] [float] NULL,
	[m_res_rov_rot] [float] NULL,
	[m_patf_pers] [float] NULL,
	[m_active_maint] [float] NULL,
	[m_downtime] [float] NULL,
	[m_add_info] [varchar](2000) NULL,
	[m_wo_no] [varchar](12) NULL,
	[m_total_manhour] [float] NULL,
	[m_interval] [float] NULL,
	[m_pmr_id] [varchar](12) NULL,
	[downtime_code] [varchar](4) NULL,
	[active_code] [varchar](4) NULL,
	[merged_i_id] [int] NULL,
	[merged_ec_code] [varchar](2) NULL,
	[sc_code] [varchar](1) NULL,
	[fm_code] [varchar](3) NULL,
	[f_wo_no] [varchar](12) NULL,
	[f_detected_date] [smalldatetime] NULL,
	[oreda_phase] [float] NULL,
	[company_phase] [float] NULL,
 CONSTRAINT [PK_maint_event] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[m_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[pm_maint_items]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[pm_maint_items](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[mi_code] [varchar](10) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
	[mc_code] [varchar](8) NOT NULL,
	[mac_code] [varchar](8) NOT NULL,
	[pm_interval] [float] NOT NULL,
 CONSTRAINT [PK_pm_maint_items] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[mi_code] ASC,
	[su_code] ASC,
	[mc_code] ASC,
	[mac_code] ASC,
	[pm_interval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [oreda].[pm_program]    Script Date: 03.03.17 15:42:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [oreda].[pm_program](
	[owner_id] [int] NOT NULL,
	[inst_id] [int] NOT NULL,
	[i_id] [int] NOT NULL,
	[ec_code] [varchar](2) NOT NULL,
	[su_code] [varchar](10) NOT NULL,
	[mc_code] [varchar](8) NOT NULL,
	[mac_code] [varchar](8) NOT NULL,
	[pm_interval] [float] NOT NULL,
	[pm_type] [varchar](1) NULL,
	[pm_manhour] [float] NULL,
	[pm_info] [varchar](32) NULL,
 CONSTRAINT [PK_pm_program] PRIMARY KEY CLUSTERED 
(
	[owner_id] ASC,
	[inst_id] ASC,
	[i_id] ASC,
	[su_code] ASC,
	[mc_code] ASC,
	[mac_code] ASC,
	[pm_interval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk11] FOREIGN KEY([ec_code])
REFERENCES [dc].[equip_class] ([ec_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk11]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk2] FOREIGN KEY([ec_code], [su_code])
REFERENCES [dc].[ec_sub_unit] ([ec_code], [su_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk2]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk3] FOREIGN KEY([fcause_no])
REFERENCES [dc].[failure_cause] ([fcause_no])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk3]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk4] FOREIGN KEY([sc_code])
REFERENCES [dc].[severity_class] ([sc_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk4]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk5] FOREIGN KEY([elc_status_id])
REFERENCES [dc].[elc_statuses] ([elc_status_id])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk5]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk7] FOREIGN KEY([fc_code])
REFERENCES [dc].[failure_consequence] ([fc_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk7]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk8] FOREIGN KEY([ec_code], [fm_code])
REFERENCES [dc].[ec_failure_mode] ([ec_code], [fm_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk8]
GO
ALTER TABLE [oreda].[failure_event]  WITH CHECK ADD  CONSTRAINT [fe_fk9] FOREIGN KEY([fm_code])
REFERENCES [dc].[failure_mode] ([fm_code])
GO
ALTER TABLE [oreda].[failure_event] CHECK CONSTRAINT [fe_fk9]
GO
ALTER TABLE [oreda].[failure_item]  WITH CHECK ADD  CONSTRAINT [fi_fk1] FOREIGN KEY([owner_id], [inst_id], [f_id])
REFERENCES [oreda].[failure_event] ([owner_id], [inst_id], [f_id])
GO
ALTER TABLE [oreda].[failure_item] CHECK CONSTRAINT [fi_fk1]
GO
ALTER TABLE [oreda].[installation]  WITH CHECK ADD  CONSTRAINT [inst_fk1] FOREIGN KEY([owner_id])
REFERENCES [dc].[owner] ([owner_id])
GO
ALTER TABLE [oreda].[installation] CHECK CONSTRAINT [inst_fk1]
GO
ALTER TABLE [oreda].[installation]  WITH CHECK ADD  CONSTRAINT [inst_fk5] FOREIGN KEY([ic_code])
REFERENCES [dc].[inst_category] ([ic_code])
GO
ALTER TABLE [oreda].[installation] CHECK CONSTRAINT [inst_fk5]
GO
ALTER TABLE [oreda].[installation]  WITH CHECK ADD  CONSTRAINT [inst_fk7] FOREIGN KEY([climate_code])
REFERENCES [dc].[climate] ([climate_code])
GO
ALTER TABLE [oreda].[installation] CHECK CONSTRAINT [inst_fk7]
GO
ALTER TABLE [oreda].[inv_instr]  WITH CHECK ADD  CONSTRAINT [inins_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[inv_instr] CHECK CONSTRAINT [inins_fk1]
GO
ALTER TABLE [oreda].[inv_spec]  WITH CHECK ADD  CONSTRAINT [invs_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[inv_spec] CHECK CONSTRAINT [invs_fk1]
GO
ALTER TABLE [oreda].[inv_sub_unit]  WITH CHECK ADD  CONSTRAINT [insu_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[inv_sub_unit] CHECK CONSTRAINT [insu_fk1]
GO
ALTER TABLE [oreda].[inv_sub_unit]  WITH CHECK ADD  CONSTRAINT [insu_fk2] FOREIGN KEY([ec_code], [su_code])
REFERENCES [dc].[ec_sub_unit] ([ec_code], [su_code])
GO
ALTER TABLE [oreda].[inv_sub_unit] CHECK CONSTRAINT [insu_fk2]
GO
ALTER TABLE [oreda].[inventory]  WITH CHECK ADD  CONSTRAINT [inv_fk1] FOREIGN KEY([owner_id], [inst_id])
REFERENCES [oreda].[installation] ([owner_id], [inst_id])
GO
ALTER TABLE [oreda].[inventory] CHECK CONSTRAINT [inv_fk1]
GO
ALTER TABLE [oreda].[inventory]  WITH CHECK ADD  CONSTRAINT [inv_fk2] FOREIGN KEY([dc_code])
REFERENCES [dc].[design_class] ([dc_code])
GO
ALTER TABLE [oreda].[inventory] CHECK CONSTRAINT [inv_fk2]
GO
ALTER TABLE [oreda].[inventory]  WITH CHECK ADD  CONSTRAINT [inv_fk4] FOREIGN KEY([op_code])
REFERENCES [dc].[oper_mode] ([op_code])
GO
ALTER TABLE [oreda].[inventory] CHECK CONSTRAINT [inv_fk4]
GO
ALTER TABLE [oreda].[inventory]  WITH CHECK ADD  CONSTRAINT [inv_fk6] FOREIGN KEY([elc_status_id])
REFERENCES [dc].[elc_statuses] ([elc_status_id])
GO
ALTER TABLE [oreda].[inventory] CHECK CONSTRAINT [inv_fk6]
GO
ALTER TABLE [oreda].[inventory]  WITH CHECK ADD  CONSTRAINT [inv_fk7] FOREIGN KEY([ec_code])
REFERENCES [dc].[equip_class] ([ec_code])
GO
ALTER TABLE [oreda].[inventory] CHECK CONSTRAINT [inv_fk7]
GO
ALTER TABLE [oreda].[inventory_history]  WITH CHECK ADD  CONSTRAINT [ih_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[inventory_history] CHECK CONSTRAINT [ih_fk1]
GO
ALTER TABLE [oreda].[inventory_history]  WITH CHECK ADD  CONSTRAINT [ih_fk2] FOREIGN KEY([ec_code])
REFERENCES [dc].[equip_class] ([ec_code])
GO
ALTER TABLE [oreda].[inventory_history] CHECK CONSTRAINT [ih_fk2]
GO
ALTER TABLE [oreda].[m_maint_items]  WITH CHECK ADD  CONSTRAINT [mmi_fk1] FOREIGN KEY([owner_id], [inst_id], [m_id])
REFERENCES [oreda].[maint_event] ([owner_id], [inst_id], [m_id])
GO
ALTER TABLE [oreda].[m_maint_items] CHECK CONSTRAINT [mmi_fk1]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk1]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk2] FOREIGN KEY([owner_id], [inst_id], [f_id])
REFERENCES [oreda].[failure_event] ([owner_id], [inst_id], [f_id])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk2]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk3] FOREIGN KEY([elc_status_id])
REFERENCES [dc].[elc_statuses] ([elc_status_id])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk3]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk4] FOREIGN KEY([ec_code], [su_code])
REFERENCES [dc].[ec_sub_unit] ([ec_code], [su_code])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk4]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk6] FOREIGN KEY([mac_code], [mc_code])
REFERENCES [dc].[maint_activity_code] ([mac_code], [mc_code])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk6]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk7] FOREIGN KEY([mc_code])
REFERENCES [dc].[maint_category] ([mc_code])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk7]
GO
ALTER TABLE [oreda].[maint_event]  WITH CHECK ADD  CONSTRAINT [me_fk8] FOREIGN KEY([ec_code])
REFERENCES [dc].[equip_class] ([ec_code])
GO
ALTER TABLE [oreda].[maint_event] CHECK CONSTRAINT [me_fk8]
GO
ALTER TABLE [oreda].[pm_maint_items]  WITH CHECK ADD  CONSTRAINT [pmmi_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id], [su_code], [mc_code], [mac_code], [pm_interval])
REFERENCES [oreda].[pm_program] ([owner_id], [inst_id], [i_id], [su_code], [mc_code], [mac_code], [pm_interval])
GO
ALTER TABLE [oreda].[pm_maint_items] CHECK CONSTRAINT [pmmi_fk1]
GO
ALTER TABLE [oreda].[pm_maint_items]  WITH CHECK ADD  CONSTRAINT [pmmi_fk2] FOREIGN KEY([ec_code], [mi_code], [su_code])
REFERENCES [dc].[ec_su_maint_item] ([ec_code], [mi_code], [su_code])
GO
ALTER TABLE [oreda].[pm_maint_items] CHECK CONSTRAINT [pmmi_fk2]
GO
ALTER TABLE [oreda].[pm_program]  WITH CHECK ADD  CONSTRAINT [pm_fk1] FOREIGN KEY([owner_id], [inst_id], [i_id])
REFERENCES [oreda].[inventory] ([owner_id], [inst_id], [i_id])
GO
ALTER TABLE [oreda].[pm_program] CHECK CONSTRAINT [pm_fk1]
GO
ALTER TABLE [oreda].[pm_program]  WITH CHECK ADD  CONSTRAINT [pm_fk2] FOREIGN KEY([mac_code], [mc_code])
REFERENCES [dc].[maint_activity_code] ([mac_code], [mc_code])
GO
ALTER TABLE [oreda].[pm_program] CHECK CONSTRAINT [pm_fk2]
GO
ALTER TABLE [oreda].[pm_program]  WITH CHECK ADD  CONSTRAINT [pm_fk3] FOREIGN KEY([ec_code], [su_code])
REFERENCES [dc].[ec_sub_unit] ([ec_code], [su_code])
GO
ALTER TABLE [oreda].[pm_program] CHECK CONSTRAINT [pm_fk3]

