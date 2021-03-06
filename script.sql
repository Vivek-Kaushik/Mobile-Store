USE [master]
GO
/****** Object:  Database [Mobile_Store]    Script Date: 16-Jul-15 12:08:11 PM ******/
CREATE DATABASE [Mobile_Store] ON  PRIMARY 
( NAME = N'Mobile_Store', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Mobile_Store.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Mobile_Store_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Mobile_Store_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mobile_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mobile_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mobile_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mobile_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mobile_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mobile_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mobile_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mobile_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mobile_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mobile_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mobile_Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mobile_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mobile_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mobile_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mobile_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mobile_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mobile_Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mobile_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mobile_Store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mobile_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Mobile_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mobile_Store] SET DB_CHAINING OFF 
GO
USE [Mobile_Store]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16-Jul-15 12:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] IDENTITY(0,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [int] NULL,
	[Email_ID] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[M_Model_ID] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[Total_Price] [int] NULL,
	[Date] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginType]    Script Date: 16-Jul-15 12:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginType](
	[User_ID] [int] IDENTITY(101,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[usertype] [varchar](50) NULL,
 CONSTRAINT [PK_LoginType] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MobileCompany]    Script Date: 16-Jul-15 12:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MobileCompany](
	[Company_ID] [int] IDENTITY(1001,1) NOT NULL,
	[C_Name] [varchar](50) NOT NULL,
	[Other] [varchar](50) NULL,
 CONSTRAINT [PK_MobileCompany] PRIMARY KEY CLUSTERED 
(
	[Company_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MobileModel]    Script Date: 16-Jul-15 12:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MobileModel](
	[M_Model_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_M_Name] [varchar](50) NOT NULL,
	[Company_ID] [int] NULL,
	[Colour_Avialable] [varchar](50) NULL,
	[OS] [varchar](50) NULL,
	[RAM] [varchar](50) NULL,
	[Camera] [varchar](50) NULL,
	[SIM] [int] NULL,
	[Specification] [varchar](1000) NULL,
	[MRP] [int] NULL,
	[Discounted_Price] [int] NULL,
 CONSTRAINT [PK_MobileModel] PRIMARY KEY CLUSTERED 
(
	[M_Model_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 16-Jul-15 12:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[Purchase_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_Model_ID] [int] NULL,
	[Quantity] [int] NULL,
	[Total_Price] [int] NULL,
	[Date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[Purchase_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer_ID], [Name], [Contact], [Email_ID], [Address], [Company], [M_Model_ID], [Price], [Quantity], [Total_Price], [Date]) VALUES (2, N'aa', 11, N'abc', N'abc', NULL, 10008, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Contact], [Email_ID], [Address], [Company], [M_Model_ID], [Price], [Quantity], [Total_Price], [Date]) VALUES (3, N'bb', 22, N'abc', N'abc', NULL, 10007, NULL, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([Customer_ID], [Name], [Contact], [Email_ID], [Address], [Company], [M_Model_ID], [Price], [Quantity], [Total_Price], [Date]) VALUES (4, N'asfjk', 43124312, N'asfjkg', N'sdalf', N'4', 10013, 245, 1, 3214, N'234')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[LoginType] ON 

INSERT [dbo].[LoginType] ([User_ID], [username], [password], [usertype]) VALUES (101, N'Admin', N'123', N'Admin')
INSERT [dbo].[LoginType] ([User_ID], [username], [password], [usertype]) VALUES (102, N'User1', N'111', N'User')
INSERT [dbo].[LoginType] ([User_ID], [username], [password], [usertype]) VALUES (103, N'User2', N'222', N'User')
SET IDENTITY_INSERT [dbo].[LoginType] OFF
SET IDENTITY_INSERT [dbo].[MobileCompany] ON 

INSERT [dbo].[MobileCompany] ([Company_ID], [C_Name], [Other]) VALUES (1001, N'Apple', NULL)
INSERT [dbo].[MobileCompany] ([Company_ID], [C_Name], [Other]) VALUES (1002, N'Samsung', NULL)
INSERT [dbo].[MobileCompany] ([Company_ID], [C_Name], [Other]) VALUES (1003, N'Sony', NULL)
INSERT [dbo].[MobileCompany] ([Company_ID], [C_Name], [Other]) VALUES (1004, N'Microsoft', NULL)
INSERT [dbo].[MobileCompany] ([Company_ID], [C_Name], [Other]) VALUES (1005, N'Micromax', NULL)
SET IDENTITY_INSERT [dbo].[MobileCompany] OFF
SET IDENTITY_INSERT [dbo].[MobileModel] ON 

INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10001, N'iPhone 5S 16GB', 1001, N'White, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 48500, 35099)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10002, N'iPhone 6 16GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 53500, 44975)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10003, N'iPhone 6 32GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 59950, 48250)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10005, N'iPhone 6 64GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 67000, 52712)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10006, N'iPhone 6+ 32GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 63000, 52599)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10007, N'iPhone 6+ 64GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 74000, 64369)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10008, N'iPhone 6+ 128GB', 1001, N'Silver, Space Grey, Gold', N'ios', N'1GB', N'8MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 85000, 74499)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10009, N'Samsung Galaxy S6', 1002, N'Black, White', N'Android 5.0(Lollipop) ', N'8 GB', N'16MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 48500, 42900)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10010, N'Samsung Galaxy S6 Edge', 1002, N'Black, White', N'Android 5.0(Lollipop) ', N'8 GB', N'16MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 53500, 48500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10011, N'Samsung Galaxy Note 4', 1002, N'Black, White', N'Android 5.0(Lollipop) ', N'8 GB', N'16MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 47000, 41900)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10013, N'Samsung Galaxy Grand Prime', 1002, N'Grey, White', N'Android 4.4(Kitkat) ', N'4 GB', N'12MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 13000, 10900)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10015, N'Samsung Galaxy A7', 1002, N'Gold', N'Android 5.0(Lollipop) ', N'4 GB', N'16MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 29000, 25990)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10016, N'Sony Xperia Z4', 1003, N'Black', N'Android 5.0(Lollipop) ', N'8 GB', N'16MP & 5MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 59000, 48500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10017, N'Sony Xperia E4', 1003, N'Black', N'Android 4.4(Kitkat) ', N'4 GB', N'8MP & 1.2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 15000, 12000)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10018, N'Sony Xperia M4 Aqua ', 1003, N'Black, White', N'Android 5.0(Lollipop) ', N'4 GB', N'8MP & 2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 25000, 22500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10019, N'Sony Xperia E3', 1003, N'White', N'Android 4.4(Kitkat) ', N'2GB', N'4MP & 1.2MP Back', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 9999, 8700)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10020, N'Microsoft Lumia 535 ', 1004, N'Orange, Yellow, White', N'Windows 8.0', N'4 GB', N'4MP & 1.2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 10000, 8699)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10021, N'Microsoft Lumia 640 XL ', 1004, N'Orange, Yellow, White', N'Windows 8.0', N'4 GB', N'4MP & 2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 18500, 15500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10022, N'Microsoft Lumia 532', 1004, N'Orange, Yellow, White', N'Windows 8.0', N'2GB', N'4MP', 1, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 8700, 6500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10023, N'Micromax Canvas Nitro 2', 1005, N'Black, White', N'Android 5.0(Lollipop) ', N'4 GB', N'12MP & 5MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 15000, 11000)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10024, N'Micromax Unite 3', 1005, N'Black, White', N'Android 4.4(Kitkat) ', N'2GB', N'4MP & 2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 9000, 6500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10025, N'Micromax Canvas Juice 2 ', 1005, N'Black, White', N'Android 5.0(Lollipop) ', N'4 GB', N'8MP & 2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 12000, 8500)
INSERT [dbo].[MobileModel] ([M_Model_ID], [M_M_Name], [Company_ID], [Colour_Avialable], [OS], [RAM], [Camera], [SIM], [Specification], [MRP], [Discounted_Price]) VALUES (10026, N'Micromax Canvas Hue', 1005, N'White, Gold', N'Android 4.4(Kitkat) ', N'4 GB', N'8MP & 2MP Back', 2, N'Supports 3G/4G, Wi-Fi, GPS,Headphones 3.5mm, nano SIM', 13500, 9490)
SET IDENTITY_INSERT [dbo].[MobileModel] OFF
SET IDENTITY_INSERT [dbo].[PurchaseOrder] ON 

INSERT [dbo].[PurchaseOrder] ([Purchase_ID], [M_Model_ID], [Quantity], [Total_Price], [Date]) VALUES (1, 10013, 9, 100000, N'9/7/2015')
INSERT [dbo].[PurchaseOrder] ([Purchase_ID], [M_Model_ID], [Quantity], [Total_Price], [Date]) VALUES (17, 10011, 4, 235000, N'10/7/2015')
INSERT [dbo].[PurchaseOrder] ([Purchase_ID], [M_Model_ID], [Quantity], [Total_Price], [Date]) VALUES (20, 10008, 2, 23000, N'11/7/2015')
INSERT [dbo].[PurchaseOrder] ([Purchase_ID], [M_Model_ID], [Quantity], [Total_Price], [Date]) VALUES (25, 10013, 234, 234, N'tw')
INSERT [dbo].[PurchaseOrder] ([Purchase_ID], [M_Model_ID], [Quantity], [Total_Price], [Date]) VALUES (26, 10013, 324, 324, N'234')
SET IDENTITY_INSERT [dbo].[PurchaseOrder] OFF
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Customer] FOREIGN KEY([M_Model_ID])
REFERENCES [dbo].[MobileModel] ([M_Model_ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Customer]
GO
ALTER TABLE [dbo].[MobileModel]  WITH CHECK ADD  CONSTRAINT [FK_MobileModel_MobileModel] FOREIGN KEY([Company_ID])
REFERENCES [dbo].[MobileCompany] ([Company_ID])
GO
ALTER TABLE [dbo].[MobileModel] CHECK CONSTRAINT [FK_MobileModel_MobileModel]
GO
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_PurchaseOrder] FOREIGN KEY([M_Model_ID])
REFERENCES [dbo].[MobileModel] ([M_Model_ID])
GO
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_PurchaseOrder]
GO
USE [master]
GO
ALTER DATABASE [Mobile_Store] SET  READ_WRITE 
GO
