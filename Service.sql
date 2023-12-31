USE [Service]
GO
/****** Object:  User [Mohammed]    Script Date: 6/24/2023 2:26:34 AM ******/
CREATE USER [Mohammed] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Mohammed]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Mohammed]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/24/2023 2:26:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCategory]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_TbCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCustomer]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCustomer](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TbCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbDeliveryMan]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbDeliveryMan](
	[DeliveryManId] [int] NOT NULL,
	[DeliveryManName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TbDeliveryMan] PRIMARY KEY CLUSTERED 
(
	[DeliveryManId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbImage]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbImage](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[ItemId] [int] NOT NULL,
 CONSTRAINT [PK_TbImage] PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbItem]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbItem](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](100) NOT NULL,
	[ItemNameAr] [nvarchar](100) NOT NULL,
	[SalesPrice] [decimal](18, 4) NOT NULL,
	[PurchasePrice] [decimal](18, 4) NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreationBy] [nvarchar](50) NOT NULL,
	[UpdationDate] [datetime] NOT NULL,
	[UpdationBy] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_TbItem] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbItemDiscount]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbItemDiscount](
	[ItemDiscountId] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[SalesPrice] [decimal](18, 4) NOT NULL,
	[DiscountPercent] [float] NOT NULL,
	[DiscountPrice] [decimal](18, 4) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_TbItemDiscount] PRIMARY KEY CLUSTERED 
(
	[ItemDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbMobileLogo]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbMobileLogo](
	[LogoId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NULL,
	[Descreption] [nvarchar](100) NULL,
	[LongDescreption] [nvarchar](100) NULL,
 CONSTRAINT [PK_TbMobileLogo] PRIMARY KEY CLUSTERED 
(
	[LogoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPurchaseInvoice]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPurchaseInvoice](
	[InvoiceId] [int] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[UpdationDate] [datetime] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[SupplierId] [int] NOT NULL,
 CONSTRAINT [PK_TbPurchaseInvoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPurchaseInvoiceItem]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPurchaseInvoiceItem](
	[InvoiceItemId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[PurchasePrice] [decimal](18, 4) NOT NULL,
	[Quantitiy] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_TbPurchaseInvoiceItem] PRIMARY KEY CLUSTERED 
(
	[InvoiceItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSalesInvoice]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSalesInvoice](
	[InvoiceId] [int] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[UpdationDate] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DeliveryManId] [int] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TbInvoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSalesInvoiceItem]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSalesInvoiceItem](
	[InvoiceItemId] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[SalesPrice] [decimal](18, 4) NOT NULL,
	[Quantitiy] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_TbSalesInvoiceItem] PRIMARY KEY CLUSTERED 
(
	[InvoiceItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSlider]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSlider](
	[SliderId] [int] IDENTITY(1,1) NOT NULL,
	[SliderImage] [nvarchar](100) NOT NULL,
	[Descreption] [nvarchar](100) NULL,
	[LongDescreption] [nvarchar](100) NULL,
 CONSTRAINT [PK_TbSlider] PRIMARY KEY CLUSTERED 
(
	[SliderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSomeLogos]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSomeLogos](
	[LogoId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_TbSomeLogos] PRIMARY KEY CLUSTERED 
(
	[LogoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSubCategory]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryName] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageName] [nvarchar](100) NULL,
 CONSTRAINT [PK_TbSubCategory] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbSupplier]    Script Date: 6/24/2023 2:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbSupplier](
	[SupplierId] [int] NOT NULL,
	[SupplierName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TbSupplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211124195826_TbMobileLogo_Migration', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207191329_TbSomeLogos_Mig', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211207191926_TbSliderMig', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211212131452_EditRequired_Image', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220126194827_TbIdentities', N'5.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1D56E837-F106-4DDC-8B57-C5904B6AE6AC', N'Admin', N'Admin', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fb85c0e2-4142-4176-9167-48651e339a36', N'1D56E837-F106-4DDC-8B57-C5904B6AE6AC')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'309923d7-abf7-4050-9c26-14fcd6682a2f', N'Hgfht', N'Jkg', N'Ahmed2@gmail.com', N'AHMED2@GMAIL.COM', N'Ahmed2@gmail.com', N'AHMED2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEECwzE83ICdYn8wNk9jYBf87vzKN6zyP4eoWqq331yz2LIiXHmx9aZCJVGvYcvQVTA==', N'NG53DJ4KLBHP6RQSLMURTNFHBFPIYZUI', N'ed776ccf-5460-48f0-b176-88ca221c6aaa', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7bf2a9c2-8b9d-4005-b226-e00748e7a61a', N'Mohammed', N'Ali', N'moufe@fet.ghg', N'MOUFE@FET.GHG', N'moufe@fet.ghg', N'MOUFE@FET.GHG', 0, N'AQAAAAEAACcQAAAAEKOrtNp5svsD/Pm8zrLc3r4kgboifFfVUTQyw85n6IwQK4+OLceFpnAoPfPGTJWJHw==', N'MEYPHIXAGEWKUJMDSBRUQ7TXS4Y2Q667', N'4561b93c-9599-4756-a92a-25183f0f510f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9db72092-db69-4bb5-83ad-38788c2d84c5', N'Fafw', N'Afw', N'hmed1@gmail.com', N'HMED1@GMAIL.COM', N'hmed1@gmail.com', N'HMED1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEFJxGpdVBwcEBFTyaryzH/bucgj9NQSgL1yQpsI+WSIEYTpRn3Z/asYNUTcUV/3Rw==', N'XOSFNXECL2P4XPT4MYRBRRZPPRA7MMNY', N'87f81048-b067-42ab-98ba-b48963a7e9fc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ce6f88d8-bb69-40d8-b555-ea7efcba86b2', N'Mohammed', N'Ali', N'Ahmed1@gmail.com', N'AHMED1@GMAIL.COM', N'Ahmed1@gmail.com', N'AHMED1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAqV+aL9r0dDkwzzu0x9HKPUpVluRfmKFAFXsiJy20IqPefYga25panWJxtwTGJmxQ==', N'B5ZVC355MKXGHNX3WKCACQEEEPVGFYDO', N'32c65866-5a0a-4bc7-8ce5-9ae083b84270', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb85c0e2-4142-4176-9167-48651e339a36', N'Mohammed', N'Mahmoud', N'Mohammed1@gmail.com', N'MOHAMMED1@GMAIL.COM', N'Mohammed1@gmail.com', N'MOHAMMED1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDXzh/E7UEtCJFkindD3IliflN9LKR4ingHB9h/8XEfSSifLvTYbew8bIIZ4LB394Q==', N'COTJEU6RHRBOFXTEB3TXNRQFF7MZA3TF', N'4370879f-1e8f-44f4-ab3f-b8f2e2f7df98', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[TbCategory] ON 

INSERT [dbo].[TbCategory] ([CategoryId], [CategoryName], [ImageName]) VALUES (1, N'Electronics', N'44a896b49c923eacb70404f85cada62a.jpg')
SET IDENTITY_INSERT [dbo].[TbCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TbImage] ON 

INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (1, N'171A529C-BDC4-42FB-8395-3AE454704B3F.jpg', 1)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (2, N'7EF28F53-63E0-45FD-B3FA-7E7E6E789CD3.jpg', 1)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (3, N'424FB098-C839-4D33-A4B8-BD0391FCC8B9.jpg', 1)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (4, N'AFB2B2C9-43E5-403F-BB15-65C8276D0145.jpg', 1)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (5, N'C361230C-C09F-4297-80E1-CED8C325C037.jpg', 2)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (6, N'25DE1B6D-2A4B-40AF-855E-B96204F75A6C.jpg', 2)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (7, N'0D7AF2E4-509A-4771-90CF-84BA3D20C4D2.jpg', 2)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (8, N'EE1A91A3-DCF3-4D55-9E17-8C3E2A0A4953.jpg', 2)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (9, N'4275C49F-3D9E-4049-98C1-1113E05E85F0.jpg', 3)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (10, N'BF9D64F2-941C-46F6-83F1-5ADE5F5CC34C.jpg', 3)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (11, N'249EA4EA-7A50-467F-84F2-CA33C8B89705.jpg', 3)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (12, N'9CFC9CCE-C36B-4284-913F-AD69B05392BC.jpg', 3)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (13, N'F38F9B73-6077-4230-A164-A1BD618A9DAE.jpg', 4)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (14, N'E2F1F659-CE34-4BFF-AA29-AFDCC453B125.jpg', 4)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (15, N'759CC6AD-88EC-4B7E-AC74-175890DF5DE1.jpg', 4)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (16, N'3B0E90A4-D871-4388-B480-ECA84B5E1271.jpg', 4)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (17, N'C4C1157A-004A-454E-95B2-65A6563257F9.jpg', 5)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (18, N'AC1B5801-A191-4E02-8C03-2F2063C7483D.jpg', 5)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (19, N'A047D0E6-2DFD-4C60-8C3C-7559D1C7B10D.jpg', 5)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (20, N'83C5CA5E-B44D-4843-B276-989DAFFD3E91.jpg', 5)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (21, N'26229292-677A-4143-8851-F203F85278AC.jpg', 6)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (22, N'375546E8-28ED-488B-9882-004E943C5E12.jpg', 6)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (23, N'2AFF9BB3-DDC9-493C-B809-081CF7E9EAD7.jpg', 7)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (24, N'87A597F4-D674-4C90-8A4B-9BF6085F3E6A.jpg', 7)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (25, N'83B9C12A-2AF4-48D5-AF89-206BA12DBEAA.jpg', 7)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (26, N'0C411074-0DE0-41F6-9DC9-C2F27F80014F.jpg', 7)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (27, N'588BEA48-38C5-4EAF-8BAE-4FC95C14C2B1.jpg', 8)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (28, N'708E63EE-5A7C-4E2A-B87A-7521C6857D98.jpg', 8)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (29, N'2EC20249-6005-4218-AC4F-CDF05AAD5146.jpg', 8)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (30, N'C0F5C160-D867-4EF2-98F5-98481A3D2EFD.jpg', 8)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (31, N'27809406-E0CB-40C4-AE0E-E1C8DE093997.jpg', 9)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (32, N'9E8EC1A6-FED0-4724-B123-58D8E9C395EC.jpg', 9)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (33, N'0A2D4D3D-762C-4E30-ABA1-68EC5251CC50.jpg', 9)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (34, N'A9B6E047-2DF0-4505-92F9-F27C06D30293.jpg', 9)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (35, N'479C0785-5CF8-48D9-BF81-E69719023324.jpg', 10)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (36, N'254F0194-85B8-4434-BE30-16B81CDF8CB5.jpg', 10)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (37, N'35F2510D-9833-442B-9A97-2673474E88B7.jpg', 10)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (38, N'5DFAEAC3-B8D5-41C9-A735-B47C9B618897.jpg', 11)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (39, N'8DE9A235-12CC-4EEA-8972-0132A0441CBB.jpg', 11)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (40, N'2645B389-CFEF-4C89-9DA8-8A7746B75BEB.jpg', 11)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (41, N'C9C063DC-6A2E-4F72-95AD-DA4E38446044.jpg', 11)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (42, N'D5614EAC-BE0F-4287-85DB-FA073181AE8A.jpg', 12)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (43, N'B37C7CC5-FEEC-430D-866A-1756140D466B.jpg', 12)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (44, N'F3C2A932-3D4C-40E4-928B-754EAB9FE83B.jpg', 13)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (45, N'6AB2ECE9-6482-4892-845B-92D17B920521.jpg', 13)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (46, N'B5BA25A4-D079-4AAB-99B4-86C75BDFBBB9.jpg', 13)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (47, N'F4C68FD2-FCFB-4793-BB04-CB941E07AB1F.jpg', 13)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (48, N'0673312A-25C0-49FA-8462-3FEF632CB841.jpg', 14)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (49, N'8C9F4A02-2D62-449D-AB2F-1F2F74F513BE.jpg', 14)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (50, N'6FA12F54-FC9A-4394-BA81-E480824D5A10.jpg', 14)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (51, N'4D609188-4981-4C30-8E7C-D3A1114F14D9.jpg', 15)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (52, N'4D609188-4981-4C30-8E7C-D3A1114F14D9.jpg', 15)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (53, N'3E9B9164-FC93-4728-AEA4-C341A9290001.jpg', 15)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (54, N'70156DDF-4E51-410F-A8EB-C6FD225AA62C.jpg', 16)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (55, N'30229050-420A-4937-B08F-E1AB35F070EC.jpg', 16)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (56, N'EBC0FF5B-0084-46B7-AA24-6B0C89988F0B.jpg', 16)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (57, N'D4185124-E5F8-41C7-9D6A-EB25A3C1EE1C.jpg', 17)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (58, N'55BDB456-DCF8-4267-ABA2-15DDC57F6A21.jpg', 17)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (59, N'1F831E64-DD71-45FA-8C1C-5223278959CE.jpg', 17)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (60, N'3161CD24-09F6-4BD0-86C9-F439C6F52731.jpg', 18)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (61, N'8EA4B307-3420-4815-8B7F-599F89A61379.jpg', 18)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (62, N'7BDC1CB8-3FC1-4AD1-A261-8C3B0F18E7F6.jpg', 18)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (63, N'1A8305C3-21B2-4C8A-A6BD-179AA743D6ED.jpg', 19)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (64, N'59BC60C7-92B7-45EF-BD19-623A3F0932AA.jpg', 19)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (65, N'ED038859-F00C-4E2A-B821-9CEF33F9D9A4.jpg', 19)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (66, N'08BA578E-2EA5-4EDB-8517-CB12A2DBCCD8.jpg', 20)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (67, N'603B1B80-DAB2-48AE-BBDE-A5486A8DFD78.jpg', 20)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (68, N'1489ECDC-1FAF-4CEC-A7D9-DECF9F02377C.jpg', 20)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (69, N'11229B43-CB8A-406A-9F17-A7758116E6FA.jpg', 21)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (70, N'F3EE36A8-C711-4D81-8A5F-368B2B6ED5AB.jpg', 21)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (71, N'23F539FC-2732-4FA8-AB03-AB6476FD6919.jpg', 21)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (72, N'ABA570EE-F619-4372-8EA8-94224723AA39.jpg', 22)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (73, N'997BFD41-AC37-4395-9036-8202311A4E5B.jpg', 22)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (74, N'40D87183-690C-4C19-B3A1-04E35AEAC062.jpg', 22)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (75, N'D635CBA5-5559-4953-9A6A-80876A2EA32B.jpg', 23)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (76, N'BE81B6CA-2768-4A3C-9C06-33B3CD6B3F26.jpg', 23)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (77, N'985FDAA6-BD3A-452E-BD8D-9831201F9CBC.jpg', 23)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (78, N'A4A6CE86-3D2B-495A-9923-5F162D0BDD00.jpg', 24)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (79, N'65CB64BC-C9F3-49FB-B1FC-6BB515A688BA.jpg', 24)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (80, N'264D77A3-B8F6-42E4-B6EE-26C1616A79E0.jpg', 24)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (81, N'5F920822-301E-4EF6-ACA5-BD7546797AA6.jpg', 25)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (82, N'6FF21CE2-95F8-483F-999C-BD654FF28274.jpg', 25)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (83, N'1B7C8A13-5016-4F68-80D2-024186BB0E33.jpg', 25)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (84, N'57B1AD26-B964-47F4-8BF5-6E702D86088F.jpg', 26)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (85, N'CC499882-D34B-46D7-A5CD-F8E222CD2DCA.jpg', 26)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (86, N'01E19121-1D22-4188-A343-2BBD63F760D8.jpg', 26)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (87, N'5FB3A188-522F-417D-A738-69158DAF14A8.jpg', 27)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (88, N'B1163944-B60F-414C-AB38-2F9B0311ED72.jpg', 27)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (89, N'DFB90BBF-6703-4D06-8366-FBAB23513CE1.jpg', 27)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (90, N'F4E02F98-B5D5-401F-AC7E-D73E736E8905.jpg', 28)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (91, N'A9A11863-7155-4FBC-A6A4-BEDCEEA7305D.jpg', 28)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (92, N'9393F4C2-2C9D-4E3E-AED8-129C85CB73B8.jpg', 28)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (93, N'EC643A80-0C96-4FD5-83F2-2DADD0C3EE57.jpg', 29)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (94, N'61BD2E29-29AC-4554-A457-3859595E9AF0.jpg', 29)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (95, N'1C7314DD-3A73-4790-A124-A0F44C4765DD.jpg', 29)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (96, N'F1EBDFAF-415D-42A5-8237-6E98B708163C.jpg', 30)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (97, N'2729437C-A777-4074-9FC8-41FD9D45C202.jpg', 30)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (98, N'3C6E887B-CAC0-44F8-801E-34E155A4AC05.jpg', 30)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (99, N'2342F62C-D9F3-48B4-B896-A9FF2F03FA7B.jpg', 31)
GO
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (100, N'2D083026-E262-433C-9C07-612DD9310035.jpg', 31)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (101, N'EC93D574-6BA9-4F11-A362-0DAD03AB8DF2.jpg', 31)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (102, N'66CD2823-5555-4968-B068-727634D9F070.jpg', 32)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (103, N'2CC6AB9A-6D56-4768-9DC8-C54A06DC22BA.jpg', 32)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (104, N'0A43B546-8989-4879-96B5-6D537E8DD022.jpg', 32)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (105, N'07D16045-6C2C-4D21-AD3C-822456257AA5.jpg', 33)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (106, N'08FAE358-373F-4AF6-94B9-66943286C49E.jpg', 33)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (107, N'525453B3-3A6D-487A-B35E-84C43FEC2929.jpg', 33)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (108, N'1D424A73-F9D1-4DB8-BA9B-41B9B4BC0026.jpg', 34)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (109, N'2A9A247B-317E-45D0-ACC6-4756F9D9F44B.jpg', 34)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (110, N'E2B4CE47-CEFD-4456-998C-93AA5FEE3785.jpg', 34)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (111, N'7E791EF5-9B10-4EBD-9E05-750B64ACA592.jpg', 35)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (112, N'17D15DA0-D506-4F04-B3DB-A217F4A08CD3.jpg', 35)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (113, N'36F478C3-1530-45E1-AFBE-31E1CF159597.jpg', 35)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (114, N'EC1A2FD7-2840-45D1-AED3-9CA1599AC984.jpg', 36)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (115, N'3244D47A-05A4-41E9-A41E-221F497E03C4.jpg', 36)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (116, N'0E4359CC-DC2E-48A3-A30F-4F304F673170.jpg', 36)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (117, N'E7A81387-121A-406F-8CC1-515D3DF42FE5.jpg', 37)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (118, N'68841431-947F-48A5-A585-D4A1A17659CD.jpg', 37)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (119, N'9200D7AE-0215-44CB-A5AE-53678D87A323.jpg', 37)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (120, N'69E1CA84-5558-4240-B3D8-54B76841B145.jpg', 38)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (121, N'27055336-2F57-48BA-A53B-D7FEC11C140B.jpg', 38)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (122, N'C5D619C6-359D-4E39-A03F-5C6A41D693A5.jpg', 38)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (123, N'4C48CC4C-0E73-4B78-A0AE-9475F8351BA8.jpg', 39)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (124, N'FF3123DA-B15A-4810-9B90-1B03744CEB14.jpg', 39)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (125, N'3D2A5497-9B10-4D72-B208-38781E2749AE.jpg', 39)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (126, N'064B452D-9853-4FE9-8BDE-1C1EEC5BEE74.jpg', 40)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (127, N'32DBE4AE-046D-4012-AAAD-41B9EB6BB8C9.jpg', 40)
INSERT [dbo].[TbImage] ([ImageId], [ImageName], [ItemId]) VALUES (128, N'2513FEBC-DDB9-4D05-A144-D72181701841.jpg', 40)
SET IDENTITY_INSERT [dbo].[TbImage] OFF
GO
SET IDENTITY_INSERT [dbo].[TbItem] ON 

INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (1, N'Samsung Galaxy S21', N'سامسونج جالاكسى S21', CAST(15758.2700 AS Decimal(18, 4)), CAST(14758.2700 AS Decimal(18, 4)), N'171A529C-BDC4-42FB-8395-3AE454704B3F.jpg', 1, 1, CAST(N'2021-11-17T21:40:06.390' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:40:06.390' AS DateTime), N'Mohammed Mahmoud', NULL, 28)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (2, N'Samsung Galaxy A12', N'سامسونج جالاكسى A12', CAST(2389.0000 AS Decimal(18, 4)), CAST(2100.0000 AS Decimal(18, 4)), N'C361230C-C09F-4297-80E1-CED8C325C037.jpg', 1, 1, CAST(N'2021-11-17T21:43:43.747' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:43:43.747' AS DateTime), N'Mohammed Mahmoud', NULL, 61)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (3, N'Samsung Galaxy A72', N'سامسونج جالاكسى A72', CAST(6818.0000 AS Decimal(18, 4)), CAST(5818.0000 AS Decimal(18, 4)), N'4275C49F-3D9E-4049-98C1-1113E05E85F0.jpg', 1, 1, CAST(N'2021-11-17T21:46:17.237' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:46:17.237' AS DateTime), N'Mohammed Mahmoud', NULL, 65)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (4, N'Samsung Galaxy A22 ', N'سامسونج جالاكسى A22', CAST(3349.0000 AS Decimal(18, 4)), CAST(2349.0000 AS Decimal(18, 4)), N'F38F9B73-6077-4230-A164-A1BD618A9DAE.jpg', 1, 1, CAST(N'2021-11-17T21:48:48.903' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:48:48.903' AS DateTime), N'Mohammed Mahmoud', NULL, 24)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (5, N'Samsung Galaxy S21 Ultra', N'سامسونج جالاكسى S21 Ultra', CAST(18702.0000 AS Decimal(18, 4)), CAST(17702.0000 AS Decimal(18, 4)), N'C4C1157A-004A-454E-95B2-65A6563257F9.jpg', 1, 1, CAST(N'2021-11-17T21:53:29.510' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:53:29.510' AS DateTime), N'Mohammed Mahmoud', NULL, 25)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (6, N'Samsung Galaxy A52s', N'سامسونج جالاكسى A52s', CAST(7440.0000 AS Decimal(18, 4)), CAST(6440.0000 AS Decimal(18, 4)), N'26229292-677A-4143-8851-F203F85278AC.jpg', 1, 1, CAST(N'2021-11-17T21:54:23.133' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:54:23.133' AS DateTime), N'Mohammed Mahmoud', NULL, 21)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (7, N'Samsung Galaxy A32', N'سامسونج جالاكسى A32', CAST(4777.0000 AS Decimal(18, 4)), CAST(3777.0000 AS Decimal(18, 4)), N'2AFF9BB3-DDC9-493C-B809-081CF7E9EAD7.jpg', 1, 1, CAST(N'2021-11-17T21:56:46.507' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:56:46.507' AS DateTime), N'Mohammed Mahmoud', NULL, 14)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (8, N'SAMSUNG Galaxy Z Flip3 5G', N'سامسونج جالاكسى Z Flip3 الجيل الخامس', CAST(15479.0000 AS Decimal(18, 4)), CAST(14479.0000 AS Decimal(18, 4)), N'588BEA48-38C5-4EAF-8BAE-4FC95C14C2B1.jpg', 1, 1, CAST(N'2021-11-17T21:59:46.870' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T21:59:46.870' AS DateTime), N'Mohammed Mahmoud', NULL, 72)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (9, N'Samsung Galaxy M12', N'سامسونج جالاكسى M12', CAST(3000.0000 AS Decimal(18, 4)), CAST(23000.0000 AS Decimal(18, 4)), N'27809406-E0CB-40C4-AE0E-E1C8DE093997.jpg', 1, 1, CAST(N'2021-11-17T22:02:29.523' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:02:29.523' AS DateTime), N'Mohammed Mahmoud', NULL, 145)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (10, N'Samsung Galaxy Note 20 Ultra', N'سامسونج جالاكسى Note 20 Ultra', CAST(16999.0000 AS Decimal(18, 4)), CAST(15999.0000 AS Decimal(18, 4)), N'479C0785-5CF8-48D9-BF81-E69719023324.jpg', 1, 1, CAST(N'2021-11-17T22:06:26.993' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:06:26.993' AS DateTime), N'Mohammed Mahmoud', NULL, 31)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (11, N'Samsung Galaxy M11', N'سامسونج جالاكسى M11', CAST(2330.0000 AS Decimal(18, 4)), CAST(1330.0000 AS Decimal(18, 4)), N'5DFAEAC3-B8D5-41C9-A735-B47C9B618897.jpg', 1, 1, CAST(N'2021-11-17T22:08:17.467' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:08:17.467' AS DateTime), N'Mohammed Mahmoud', NULL, 45)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (12, N'Samsung Galaxy A02s', N'سامسونج جالاكسى A02s', CAST(2450.0000 AS Decimal(18, 4)), CAST(2450.0000 AS Decimal(18, 4)), N'D5614EAC-BE0F-4287-85DB-FA073181AE8A.jpg', 1, 1, CAST(N'2021-11-17T22:11:51.740' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:11:51.740' AS DateTime), N'Mohammed Mahmoud', NULL, 14)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (13, N'Samsung Galaxy M32', N'سامسونج جالاكسى M32', CAST(5610.0000 AS Decimal(18, 4)), CAST(4610.0000 AS Decimal(18, 4)), N'F3C2A932-3D4C-40E4-928B-754EAB9FE83B.jpg', 1, 1, CAST(N'2021-11-17T22:16:25.373' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:16:25.373' AS DateTime), N'Mohammed Mahmoud', NULL, 29)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (14, N'Samsung Galaxy M62', N'سامسونج جالاكسى M62', CAST(6300.0000 AS Decimal(18, 4)), CAST(5300.0000 AS Decimal(18, 4)), N'0673312A-25C0-49FA-8462-3FEF632CB841.jpg', 1, 1, CAST(N'2021-11-17T22:18:30.630' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:18:30.630' AS DateTime), N'Mohammed Mahmoud', NULL, 36)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (15, N'Samsung Galaxy M51', N'سامسونج جالاكسى M51', CAST(6400.0000 AS Decimal(18, 4)), CAST(5400.0000 AS Decimal(18, 4)), N'4D609188-4981-4C30-8E7C-D3A1114F14D9.jpg', 1, 1, CAST(N'2021-11-17T22:22:31.390' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T22:22:31.390' AS DateTime), N'Mohammed Mahmoud', NULL, 25)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (16, N'Xiaomi 11T Pro', N'شاومى 11T Pro', CAST(11000.0000 AS Decimal(18, 4)), CAST(10000.0000 AS Decimal(18, 4)), N'70156DDF-4E51-410F-A8EB-C6FD225AA62C.jpg', 1, 3, CAST(N'2021-11-17T23:19:46.810' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:19:46.810' AS DateTime), N'Mohammed Mahmoud', NULL, 62)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (17, N'Xiaomi 11 Lite 5G NE', N'شاومى  11 Lite 5G NE', CAST(6800.0000 AS Decimal(18, 4)), CAST(6300.0000 AS Decimal(18, 4)), N'D4185124-E5F8-41C7-9D6A-EB25A3C1EE1C.jpg', 1, 3, CAST(N'2021-11-17T23:21:34.930' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:21:34.930' AS DateTime), N'Mohammed Mahmoud', NULL, 32)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (18, N'Xiaomi Redmi 10', N'شاومى ريدمى 10', CAST(2799.0000 AS Decimal(18, 4)), CAST(2200.0000 AS Decimal(18, 4)), N'3161CD24-09F6-4BD0-86C9-F439C6F52731.jpg', 1, 3, CAST(N'2021-11-17T23:24:24.457' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:24:24.457' AS DateTime), N'Mohammed Mahmoud', NULL, 78)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (19, N'Xiaomi Redmi 9T', N'شاومى ريدمى 9T', CAST(3099.0000 AS Decimal(18, 4)), CAST(2099.0000 AS Decimal(18, 4)), N'1A8305C3-21B2-4C8A-A6BD-179AA743D6ED.jpg', 1, 3, CAST(N'2021-11-17T23:26:33.967' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:26:33.967' AS DateTime), N'Mohammed Mahmoud', NULL, 21)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (20, N'Xiaomi Redmi 9A', N'شاومى ريدمى 9A', CAST(1649.0000 AS Decimal(18, 4)), CAST(1149.0000 AS Decimal(18, 4)), N'08BA578E-2EA5-4EDB-8517-CB12A2DBCCD8.jpg', 1, 3, CAST(N'2021-11-17T23:28:47.827' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:28:47.827' AS DateTime), N'Mohammed Mahmoud', NULL, 67)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (21, N'Xiaomi Redmi Note 10S', N'شاومى ريدمى Note 10S', CAST(4111.0000 AS Decimal(18, 4)), CAST(3111.0000 AS Decimal(18, 4)), N'11229B43-CB8A-406A-9F17-A7758116E6FA.jpg', 1, 3, CAST(N'2021-11-17T23:31:07.490' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:31:07.490' AS DateTime), N'Mohammed Mahmoud', NULL, 82)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (22, N'Xiaomi Redmi Note 8', N'شاومى ريدمى Note 8', CAST(2699.0000 AS Decimal(18, 4)), CAST(1699.0000 AS Decimal(18, 4)), N'ABA570EE-F619-4372-8EA8-94224723AA39.jpg', 1, 3, CAST(N'2021-11-17T23:33:41.670' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:33:41.670' AS DateTime), N'Mohammed Mahmoud', NULL, 18)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (23, N'Xiaomi Poco M3', N'شاومي بوكو M3', CAST(2930.0000 AS Decimal(18, 4)), CAST(1930.0000 AS Decimal(18, 4)), N'D635CBA5-5559-4953-9A6A-80876A2EA32B.jpg', 1, 3, CAST(N'2021-11-17T23:35:32.970' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:35:32.970' AS DateTime), N'Mohammed Mahmoud', NULL, 99)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (24, N'Xiaomi Poco X3 GT', N'شاومي بوكو X3 GT', CAST(5800.0000 AS Decimal(18, 4)), CAST(4800.0000 AS Decimal(18, 4)), N'A4A6CE86-3D2B-495A-9923-5F162D0BDD00.jpg', 1, 3, CAST(N'2021-11-17T23:38:06.650' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:38:06.650' AS DateTime), N'Mohammed Mahmoud', NULL, 163)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (25, N'Xiaomi Poco M3 Pro 5G', N'شاومي بوكو  M3 Pro 5G', CAST(7600.0000 AS Decimal(18, 4)), CAST(6600.0000 AS Decimal(18, 4)), N'5F920822-301E-4EF6-ACA5-BD7546797AA6.jpg', 1, 3, CAST(N'2021-11-17T23:40:36.603' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:40:36.603' AS DateTime), N'Mohammed Mahmoud', NULL, 36)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (26, N'Xiaomi 11T', N'شاومى 11T', CAST(7700.0000 AS Decimal(18, 4)), CAST(7000.0000 AS Decimal(18, 4)), N'57B1AD26-B964-47F4-8BF5-6E702D86088F.jpg', 1, 3, CAST(N'2021-11-17T23:43:21.320' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:43:21.320' AS DateTime), N'Mohammed Mahmoud', NULL, 12)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (27, N'Xiaomi Poco F3', N'شاومي بوكو  F3', CAST(6700.0000 AS Decimal(18, 4)), CAST(6000.0000 AS Decimal(18, 4)), N'5FB3A188-522F-417D-A738-69158DAF14A8.jpg', 1, 3, CAST(N'2021-11-17T23:47:10.727' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:47:10.727' AS DateTime), N'Mohammed Mahmoud', NULL, 36)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (28, N'Xiaomi Mi 11', N'شاومى مى 11', CAST(13300.0000 AS Decimal(18, 4)), CAST(12300.0000 AS Decimal(18, 4)), N'F4E02F98-B5D5-401F-AC7E-D73E736E8905.jpg', 1, 3, CAST(N'2021-11-17T23:49:26.203' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:49:26.203' AS DateTime), N'Mohammed Mahmoud', NULL, 13)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (29, N'Xiaomi Mi 10T Lite', N'شاومى مى 10T Lite', CAST(4500.0000 AS Decimal(18, 4)), CAST(4100.0000 AS Decimal(18, 4)), N'EC643A80-0C96-4FD5-83F2-2DADD0C3EE57.jpg', 1, 3, CAST(N'2021-11-17T23:51:24.060' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:51:24.060' AS DateTime), N'Mohammed Mahmoud', NULL, 67)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (30, N'Xiaomi Poco F2 Pro', N'شاومي بوكو  F2 Pro', CAST(9600.0000 AS Decimal(18, 4)), CAST(8600.0000 AS Decimal(18, 4)), N'F1EBDFAF-415D-42A5-8237-6E98B708163C.jpg', 1, 3, CAST(N'2021-11-17T23:53:18.443' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-17T23:53:18.443' AS DateTime), N'Mohammed Mahmoud', NULL, 32)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (31, N'iPhone 13 Pro Max', N'ايفون 13 Pro Max', CAST(28000.0000 AS Decimal(18, 4)), CAST(26000.0000 AS Decimal(18, 4)), N'2342F62C-D9F3-48B4-B896-A9FF2F03FA7B.jpg', 1, 2, CAST(N'2021-11-18T00:46:44.117' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T00:46:44.117' AS DateTime), N'Mohammed Mahmoud', NULL, 73)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (32, N'iPhone 13 Pro', N'ايفون 13 Pro', CAST(25000.0000 AS Decimal(18, 4)), CAST(23000.0000 AS Decimal(18, 4)), N'66CD2823-5555-4968-B068-727634D9F070.jpg', 1, 2, CAST(N'2021-11-18T00:48:15.173' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T00:48:15.173' AS DateTime), N'Mohammed Mahmoud', NULL, 37)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (33, N'iPhone 13', N'ايفون  13', CAST(17500.0000 AS Decimal(18, 4)), CAST(15500.0000 AS Decimal(18, 4)), N'07D16045-6C2C-4D21-AD3C-822456257AA5.jpg', 1, 2, CAST(N'2021-11-18T00:49:50.537' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T00:49:50.537' AS DateTime), N'Mohammed Mahmoud', NULL, 35)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (34, N'iPhone 12 Mini', N'ايفون 12 Mini', CAST(11500.0000 AS Decimal(18, 4)), CAST(10500.0000 AS Decimal(18, 4)), N'1D424A73-F9D1-4DB8-BA9B-41B9B4BC0026.jpg', 1, 2, CAST(N'2021-11-18T00:58:18.310' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T00:58:18.310' AS DateTime), N'Mohammed Mahmoud', NULL, 64)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (35, N'iPhone 12', N'ايفون  12', CAST(13500.0000 AS Decimal(18, 4)), CAST(12500.0000 AS Decimal(18, 4)), N'7E791EF5-9B10-4EBD-9E05-750B64ACA592.jpg', 1, 2, CAST(N'2021-11-18T00:59:50.330' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T00:59:50.330' AS DateTime), N'Mohammed Mahmoud', NULL, 23)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (36, N'iPhone 12 Pro', N'ايفون 12 Pro', CAST(19000.0000 AS Decimal(18, 4)), CAST(17000.0000 AS Decimal(18, 4)), N'EC1A2FD7-2840-45D1-AED3-9CA1599AC984.jpg', 1, 2, CAST(N'2021-11-18T01:53:00.703' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T01:53:00.703' AS DateTime), N'Mohammed Mahmoud', NULL, 30)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (37, N'iPhone 12 Pro Max', N'ايفون 12 Pro Max', CAST(20000.0000 AS Decimal(18, 4)), CAST(18000.0000 AS Decimal(18, 4)), N'E7A81387-121A-406F-8CC1-515D3DF42FE5.jpg', 1, 2, CAST(N'2021-11-18T01:55:01.413' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T01:55:01.413' AS DateTime), N'Mohammed Mahmoud', NULL, 23)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (38, N'iPhone SE 2020', N'ايفون  SE 2020', CAST(9200.0000 AS Decimal(18, 4)), CAST(8200.0000 AS Decimal(18, 4)), N'69E1CA84-5558-4240-B3D8-54B76841B145.jpg', 1, 2, CAST(N'2021-11-18T01:56:53.443' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T01:56:53.443' AS DateTime), N'Mohammed Mahmoud', NULL, 25)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (39, N'iPhone 11 Pro Max', N'ايفون 11 Pro Max', CAST(18600.0000 AS Decimal(18, 4)), CAST(16600.0000 AS Decimal(18, 4)), N'4C48CC4C-0E73-4B78-A0AE-9475F8351BA8.jpg', 1, 2, CAST(N'2021-11-18T01:58:20.077' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T01:58:20.077' AS DateTime), N'Mohammed Mahmoud', NULL, 38)
INSERT [dbo].[TbItem] ([ItemId], [ItemName], [ItemNameAr], [SalesPrice], [PurchasePrice], [ImageName], [CategoryId], [SubCategoryId], [CreationDate], [CreationBy], [UpdationDate], [UpdationBy], [Notes], [Quantity]) VALUES (40, N'iPhone 11', N'ايفون 11', CAST(11500.0000 AS Decimal(18, 4)), CAST(10500.0000 AS Decimal(18, 4)), N'064B452D-9853-4FE9-8BDE-1C1EEC5BEE74.jpg', 1, 2, CAST(N'2021-11-18T01:59:48.910' AS DateTime), N'Mohammed Mahmoud', CAST(N'2021-11-18T01:59:48.910' AS DateTime), N'Mohammed Mahmoud', NULL, 57)
SET IDENTITY_INSERT [dbo].[TbItem] OFF
GO
SET IDENTITY_INSERT [dbo].[TbItemDiscount] ON 

INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (1, 8, N'588BEA48-38C5-4EAF-8BAE-4FC95C14C2B1.jpg', CAST(15479.0000 AS Decimal(18, 4)), 0.15, CAST(13423.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:30:29.343' AS DateTime), CAST(N'2022-01-23T21:30:29.343' AS DateTime), 72)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (2, 32, N'66CD2823-5555-4968-B068-727634D9F070.jpg', CAST(25000.0000 AS Decimal(18, 4)), 0.1, CAST(22400.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:31:13.170' AS DateTime), CAST(N'2022-01-23T21:31:13.170' AS DateTime), 37)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (3, 38, N'69E1CA84-5558-4240-B3D8-54B76841B145.jpg', CAST(9200.0000 AS Decimal(18, 4)), 0.2, CAST(8300.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:31:53.340' AS DateTime), CAST(N'2022-01-23T21:31:53.340' AS DateTime), 25)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (4, 21, N'11229B43-CB8A-406A-9F17-A7758116E6FA.jpg', CAST(4111.0000 AS Decimal(18, 4)), 0.4, CAST(3121.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:32:28.257' AS DateTime), CAST(N'2022-01-23T21:32:28.257' AS DateTime), 82)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (5, 5, N'C4C1157A-004A-454E-95B2-65A6563257F9.jpg', CAST(18702.0000 AS Decimal(18, 4)), 0.32, CAST(16502.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:33:04.703' AS DateTime), CAST(N'2022-01-23T21:33:04.703' AS DateTime), 12)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (6, 16, N'70156DDF-4E51-410F-A8EB-C6FD225AA62C.jpg', CAST(11000.0000 AS Decimal(18, 4)), 0.15, CAST(10700.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:33:41.523' AS DateTime), CAST(N'2022-01-23T21:33:41.523' AS DateTime), 62)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (7, 27, N'5FB3A188-522F-417D-A738-69158DAF14A8.jpg', CAST(6700.0000 AS Decimal(18, 4)), 0.2, CAST(5400.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:34:18.317' AS DateTime), CAST(N'2022-01-23T21:34:18.317' AS DateTime), 36)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (8, 31, N'2342F62C-D9F3-48B4-B896-A9FF2F03FA7B.jpg', CAST(28000.0000 AS Decimal(18, 4)), 0.2, CAST(25000.0000 AS Decimal(18, 4)), CAST(N'2021-11-24T21:34:46.340' AS DateTime), CAST(N'2022-01-23T21:34:46.340' AS DateTime), 73)
INSERT [dbo].[TbItemDiscount] ([ItemDiscountId], [ItemId], [ImageName], [SalesPrice], [DiscountPercent], [DiscountPrice], [StartDate], [EndDate], [Quantity]) VALUES (9, 3, N'8591466d-af65-417d-868e-6ab470ad1a33.jpg', CAST(6818.0000 AS Decimal(18, 4)), 20, CAST(5000.0000 AS Decimal(18, 4)), CAST(N'2022-04-01T00:00:00.000' AS DateTime), CAST(N'2022-03-05T00:00:00.000' AS DateTime), 65)
SET IDENTITY_INSERT [dbo].[TbItemDiscount] OFF
GO
INSERT [dbo].[TbMobileLogo] ([LogoId], [ImageName], [Descreption], [LongDescreption]) VALUES (1, N'3919F7C2-9AE4-4316-9A75-9ACD70BDA0BE.jpg', N'', NULL)
INSERT [dbo].[TbMobileLogo] ([LogoId], [ImageName], [Descreption], [LongDescreption]) VALUES (2, N'17937AE5-3570-4710-8503-56A50DBB5EBE.png', NULL, NULL)
INSERT [dbo].[TbMobileLogo] ([LogoId], [ImageName], [Descreption], [LongDescreption]) VALUES (3, N'B71A5986-30B5-46A2-8B72-82DF2A763154.png', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[TbSlider] ON 

INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (1, N'CA329423-48D8-4539-BB7A-61BBB1BAE552.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (2, N'BBE04F75-E3E3-4A91-A972-0A04A90FF377.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (3, N'3115B396-4A22-439A-94C0-84E86904FE9E.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (4, N'38EC8C52-F55A-4B76-91EE-86F3883E5D63.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (5, N'F5091D6A-64E2-4025-9CD9-DD80EC6CDEFD.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (6, N'69D69FF8-CFCB-4CEC-B053-31C86759E9F4.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (7, N'6FF86E95-6582-4FA4-8024-A0D5C77846CD.jpg', N'This is Description', N'This is Long Description')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (8, N'5F8C01E3-1228-488E-AC74-C89D30FBB6AD.jpg', N'ELEGANT COLLECTION', N'20% Discount')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (9, N'C07B50F0-CDA1-4493-9707-39C6A393BE89.png', N'MEN''S CLOTHINGS', N'UP TO 50% OFF')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (10, N'CE1E32E0-A401-4207-B1EA-1D5219178BFD.png', N'SUMMER COLLECTION', N'40% Discount')
INSERT [dbo].[TbSlider] ([SliderId], [SliderImage], [Descreption], [LongDescreption]) VALUES (11, N'6aa26d2f-5ba1-4b5d-b0ee-8419c48bb630.jpg', N'fawf', N'fwwwww')
SET IDENTITY_INSERT [dbo].[TbSlider] OFF
GO
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (1, N'9A03C84B-3E77-4416-A7C8-89A499FB11F3.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (2, N'9ABE9CA7-27E6-482F-A634-E693D7CDD73D.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (3, N'12A36950-53DE-46D2-9F09-2688C035E317.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (4, N'14EDBDBA-0A17-48DF-BD4D-FCA950B8A65A.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (5, N'52EEAFBF-77D2-4151-84C1-4A7A48E48801.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (6, N'3948BE9D-4B6D-4FEB-B736-AA20061E7EF1.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (7, N'8180F1E3-30D8-47CA-998B-19CC01330280.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (8, N'73288DAD-9891-49D9-AC86-F186B5275AEA.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (9, N'A84B0A38-DDF3-4730-90C2-F9B622965D84.png')
INSERT [dbo].[TbSomeLogos] ([LogoId], [ImageName]) VALUES (10, N'E41F937B-0EDF-483A-A5A2-1AD31D6857C1.png')
GO
SET IDENTITY_INSERT [dbo].[TbSubCategory] ON 

INSERT [dbo].[TbSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [ImageName]) VALUES (1, N'Samsung', 1, N'17937AE5-3570-4710-8503-56A50DBB5EBE.jpg')
INSERT [dbo].[TbSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [ImageName]) VALUES (2, N'Apple', 1, N'B71A5986-30B5-47E2-8B72-82DFGA763154.png')
INSERT [dbo].[TbSubCategory] ([SubCategoryId], [SubCategoryName], [CategoryId], [ImageName]) VALUES (3, N'Xiaomi', 1, N'3919F7C2-9AE4-4316-9A75-9ACD70BDA0BE.jpg')
SET IDENTITY_INSERT [dbo].[TbSubCategory] OFF
GO
/****** Object:  Index [IX_TbCustomer]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbCustomer] ADD  CONSTRAINT [IX_TbCustomer] UNIQUE NONCLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbDeliveryMan]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbDeliveryMan] ADD  CONSTRAINT [IX_TbDeliveryMan] UNIQUE NONCLUSTERED 
(
	[DeliveryManId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItemDiscount]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbItemDiscount] ADD  CONSTRAINT [IX_TbItemDiscount] UNIQUE NONCLUSTERED 
(
	[ItemDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbItemDiscount_1]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbItemDiscount] ADD  CONSTRAINT [IX_TbItemDiscount_1] UNIQUE NONCLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbPurchaseInvoice]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbPurchaseInvoice] ADD  CONSTRAINT [IX_TbPurchaseInvoice] UNIQUE NONCLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbPurchaseInvoiceItem]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbPurchaseInvoiceItem] ADD  CONSTRAINT [IX_TbPurchaseInvoiceItem] UNIQUE NONCLUSTERED 
(
	[InvoiceItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbInvoice]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbSalesInvoice] ADD  CONSTRAINT [IX_TbInvoice] UNIQUE NONCLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbSalesInvoiceItem]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbSalesInvoiceItem] ADD  CONSTRAINT [IX_TbSalesInvoiceItem] UNIQUE NONCLUSTERED 
(
	[InvoiceItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TbSubCategory]    Script Date: 6/24/2023 2:26:35 AM ******/
ALTER TABLE [dbo].[TbSubCategory] ADD  CONSTRAINT [IX_TbSubCategory] UNIQUE NONCLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbItem] ADD  CONSTRAINT [DF_TbItem_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[TbItem] ADD  CONSTRAINT [DF_TbItem_CreationBy]  DEFAULT ('Mohammed Mahmoud') FOR [CreationBy]
GO
ALTER TABLE [dbo].[TbItem] ADD  CONSTRAINT [DF_TbItem_UpdationDate]  DEFAULT (getdate()) FOR [UpdationDate]
GO
ALTER TABLE [dbo].[TbItem] ADD  CONSTRAINT [DF_TbItem_UpdationBy]  DEFAULT ('Mohammed Mahmoud') FOR [UpdationBy]
GO
ALTER TABLE [dbo].[TbItemDiscount] ADD  CONSTRAINT [DF_TbItemDiscount_StartDate]  DEFAULT (getdate()) FOR [StartDate]
GO
ALTER TABLE [dbo].[TbItemDiscount] ADD  CONSTRAINT [DF_TbItemDiscount_EndDate]  DEFAULT (getdate()+(60)) FOR [EndDate]
GO
ALTER TABLE [dbo].[TbPurchaseInvoice] ADD  CONSTRAINT [DF_TbPurchaseInvoice_UpdationDate]  DEFAULT (getdate()) FOR [UpdationDate]
GO
ALTER TABLE [dbo].[TbSalesInvoice] ADD  CONSTRAINT [DF_TbInvoice_UpdationDate]  DEFAULT (getdate()) FOR [UpdationDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[TbImage]  WITH CHECK ADD  CONSTRAINT [FK_TbImage_TbItem] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([ItemId])
GO
ALTER TABLE [dbo].[TbImage] CHECK CONSTRAINT [FK_TbImage_TbItem]
GO
ALTER TABLE [dbo].[TbItem]  WITH CHECK ADD  CONSTRAINT [FK_TbItem_TbCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[TbCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[TbItem] CHECK CONSTRAINT [FK_TbItem_TbCategory]
GO
ALTER TABLE [dbo].[TbItem]  WITH CHECK ADD  CONSTRAINT [FK_TbItem_TbSubCategory] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[TbSubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[TbItem] CHECK CONSTRAINT [FK_TbItem_TbSubCategory]
GO
ALTER TABLE [dbo].[TbItemDiscount]  WITH CHECK ADD  CONSTRAINT [FK_TbItemDiscount_TbItem] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([ItemId])
GO
ALTER TABLE [dbo].[TbItemDiscount] CHECK CONSTRAINT [FK_TbItemDiscount_TbItem]
GO
ALTER TABLE [dbo].[TbPurchaseInvoice]  WITH CHECK ADD  CONSTRAINT [FK_TbPurchaseInvoice_TbSupplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[TbSupplier] ([SupplierId])
GO
ALTER TABLE [dbo].[TbPurchaseInvoice] CHECK CONSTRAINT [FK_TbPurchaseInvoice_TbSupplier]
GO
ALTER TABLE [dbo].[TbPurchaseInvoiceItem]  WITH CHECK ADD  CONSTRAINT [FK_TbPurchaseInvoiceItem_TbItem] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([ItemId])
GO
ALTER TABLE [dbo].[TbPurchaseInvoiceItem] CHECK CONSTRAINT [FK_TbPurchaseInvoiceItem_TbItem]
GO
ALTER TABLE [dbo].[TbPurchaseInvoiceItem]  WITH CHECK ADD  CONSTRAINT [FK_TbPurchaseInvoiceItem_TbPurchaseInvoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[TbPurchaseInvoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[TbPurchaseInvoiceItem] CHECK CONSTRAINT [FK_TbPurchaseInvoiceItem_TbPurchaseInvoice]
GO
ALTER TABLE [dbo].[TbSalesInvoice]  WITH CHECK ADD  CONSTRAINT [FK_TbSalesInvoice_TbCustomer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[TbCustomer] ([CustomerId])
GO
ALTER TABLE [dbo].[TbSalesInvoice] CHECK CONSTRAINT [FK_TbSalesInvoice_TbCustomer]
GO
ALTER TABLE [dbo].[TbSalesInvoice]  WITH CHECK ADD  CONSTRAINT [FK_TbSalesInvoice_TbDeliveryMan] FOREIGN KEY([DeliveryManId])
REFERENCES [dbo].[TbDeliveryMan] ([DeliveryManId])
GO
ALTER TABLE [dbo].[TbSalesInvoice] CHECK CONSTRAINT [FK_TbSalesInvoice_TbDeliveryMan]
GO
ALTER TABLE [dbo].[TbSalesInvoiceItem]  WITH CHECK ADD  CONSTRAINT [FK_TbSalesInvoiceItem_TbItem] FOREIGN KEY([ItemId])
REFERENCES [dbo].[TbItem] ([ItemId])
GO
ALTER TABLE [dbo].[TbSalesInvoiceItem] CHECK CONSTRAINT [FK_TbSalesInvoiceItem_TbItem]
GO
ALTER TABLE [dbo].[TbSalesInvoiceItem]  WITH CHECK ADD  CONSTRAINT [FK_TbSalesInvoiceItem_TbSalesInvoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[TbSalesInvoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[TbSalesInvoiceItem] CHECK CONSTRAINT [FK_TbSalesInvoiceItem_TbSalesInvoice]
GO
ALTER TABLE [dbo].[TbSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_TbSubCategory_TbCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[TbCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[TbSubCategory] CHECK CONSTRAINT [FK_TbSubCategory_TbCategory]
GO
