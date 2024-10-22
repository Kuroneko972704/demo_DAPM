USE [master]
GO
/****** Object:  Database [DBSneakerStore]    Script Date: 11/20/2023 11:26:43 PM ******/
CREATE DATABASE [DBSneakerStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSneakerStore', FILENAME = N'E:\DAPM\WebBanGiay\WebBanGiay\DBSneakerStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBSneakerStore_log', FILENAME = N'E:\DAPM\WebBanGiay\WebBanGiay\DBSneakerStore.mdf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSneakerStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSneakerStore] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [DBSneakerStore] SET ANSI_NULLS ON 
GO
ALTER DATABASE [DBSneakerStore] SET ANSI_PADDING ON 
GO
ALTER DATABASE [DBSneakerStore] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [DBSneakerStore] SET ARITHABORT ON 
GO
ALTER DATABASE [DBSneakerStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBSneakerStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSneakerStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSneakerStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSneakerStore] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [DBSneakerStore] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [DBSneakerStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSneakerStore] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [DBSneakerStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSneakerStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBSneakerStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSneakerStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSneakerStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSneakerStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSneakerStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSneakerStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSneakerStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSneakerStore] SET RECOVERY FULL 
GO
ALTER DATABASE [DBSneakerStore] SET  MULTI_USER 
GO
ALTER DATABASE [DBSneakerStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSneakerStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSneakerStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSneakerStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBSneakerStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBSneakerStore', N'ON'
GO
ALTER DATABASE [DBSneakerStore] SET QUERY_STORE = OFF
GO
USE [DBSneakerStore]
GO
/****** Object:  Table [dbo].[AdminUser]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameUser] [nvarchar](50) NULL,
	[RoleUser] [nvarchar](50) NULL,
	[PasswordUser] [nchar](50) NULL,
 CONSTRAINT [PK__AdminUse__3214EC27C7189854] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCate] [int] IDENTITY(1,1) NOT NULL,
	[NameCate] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IDCus] [int] IDENTITY(1,1) NOT NULL,
	[NameCus] [nvarchar](50) NULL,
	[PhoneCus] [nvarchar](15) NULL,
	[EmailCus] [nvarchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProduct] [int] NULL,
	[IDOrder] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPro]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPro](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[IDCus] [int] NULL,
	[AddressDeliverry] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[NamePro] [nvarchar](max) NULL,
	[DecriptionPro] [nvarchar](max) NULL,
	[CateID] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[ImagePro] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/20/2023 11:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[IDVoucher] [varchar](50) NOT NULL,
	[MaVoucher] [varchar](50) NULL,
	[PhanTramDis] [int] NULL,
	[MotaVoucher] [nvarchar](max) NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[IDVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminUser] ON 

INSERT [dbo].[AdminUser] ([ID], [NameUser], [RoleUser], [PasswordUser]) VALUES (0, N'nhanvien', N'ADMin', N'123                                               ')
INSERT [dbo].[AdminUser] ([ID], [NameUser], [RoleUser], [PasswordUser]) VALUES (1, N'Sa', N'ADMIN', N'123                                               ')
INSERT [dbo].[AdminUser] ([ID], [NameUser], [RoleUser], [PasswordUser]) VALUES (2, N'ADMIN', N'ADMIN', N'123                                               ')
SET IDENTITY_INSERT [dbo].[AdminUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCate], [NameCate]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Category] ([IDCate], [NameCate]) VALUES (2, N'CONVERSE')
INSERT [dbo].[Category] ([IDCate], [NameCate]) VALUES (3, N'NIKE')
INSERT [dbo].[Category] ([IDCate], [NameCate]) VALUES (5, N'VANS')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (4, N'qwe', N'123', N'qwe', N'bao', N'123')
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (5, N'qwe', N'123', N'qwe', N'qqq', N'123')
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (6, N'qwe', N'0901234567', N'qwe', N'bao', N'123123123')
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (7, N'sa123', N'1234567890', N'sa@gmail.com', N'Sa123', N'sa123')
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (8, N'dogbee', N'1234567890', N'dogbee@gmail.com', N'dogbee', N'123')
INSERT [dbo].[Customer] ([IDCus], [NameCus], [PhoneCus], [EmailCus], [UserName], [Password]) VALUES (9, N'DOGBEE', N'1234567890', N'dogbee@gmail.com', N'dogbee', N'123')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (13, 19, 13, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (14, 20, 13, 1, 2850000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (15, 19, 14, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (16, 19, 15, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (17, 20, 15, 1, 2850000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (18, 14, 15, 1, 2600000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (19, 19, 16, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (20, 20, 17, 1, 2850000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (21, 20, 19, 1, 2850000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (22, 14, 19, 1, 2600000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (23, 23, 20, 1, 1800000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (24, 19, 21, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (25, 19, 22, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (26, 20, 23, 1, 2850000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (27, 19, 24, 1, 3100000, NULL)
INSERT [dbo].[OrderDetail] ([ID], [IDProduct], [IDOrder], [Quantity], [UnitPrice], [Size]) VALUES (28, 20, 24, 1, 2850000, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderPro] ON 

INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (1, CAST(N'2022-11-26' AS Date), 4, N'Hồ Chí Minh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (2, CAST(N'2022-11-27' AS Date), 4, N'hcm')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (3, CAST(N'2022-11-27' AS Date), 4, N'Hồ Chí Minh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (9, CAST(N'2022-11-27' AS Date), 4, N'Hồ Chí Minh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (10, CAST(N'2022-11-27' AS Date), 4, N'Hà Nội')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (11, CAST(N'2022-11-27' AS Date), 4, N'qqqq')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (12, CAST(N'2022-11-28' AS Date), 4, N'Hồ Chí Minh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (13, CAST(N'2023-10-31' AS Date), 7, N'ádas')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (14, CAST(N'2023-10-31' AS Date), 7, N' gfgh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (15, CAST(N'2023-10-31' AS Date), 7, N'ghghf')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (16, CAST(N'2023-10-31' AS Date), 7, N' gfgh')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (17, CAST(N'2023-11-01' AS Date), 7, N'sdfds')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (18, CAST(N'2023-11-01' AS Date), 7, N'sdfds')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (19, CAST(N'2023-11-01' AS Date), 7, N'HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (20, CAST(N'2023-11-01' AS Date), 7, N'HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (21, CAST(N'2023-11-01' AS Date), 7, N'HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (22, CAST(N'2023-11-01' AS Date), 7, N'HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (23, CAST(N'2023-11-01' AS Date), 7, N'HCM')
INSERT [dbo].[OrderPro] ([ID], [DateOrder], [IDCus], [AddressDeliverry]) VALUES (24, CAST(N'2023-11-15' AS Date), 7, N'HCM')
SET IDENTITY_INSERT [dbo].[OrderPro] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (3, N'Nike React Infinity Run Flyknit 3', N'Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới được thành lập tại Mỹ. Nike là nhà cung cấp giày thể thao lớn nhất trên thế giới và cũng là một nhà sản xuất thiết bị thể thao danh tiếng. Những đôi giày thể thao của Nike rất được ưu chuộng trên toàn thế giới thông qua các con số doanh thu khổng lồ mà Nike nhận được.Khách hàng từ mọi lứu tuổi , từ mọi từng lớp đều rất yêu thích những đôi giày mà Nike mang tới cho các tín đồ yêu thích giày trên toàn thế giới. Chúng ta có thể bắt gặp rất nhiều siêu sao, người mẫu, ca sĩ mang trên chân những đôi giày vô cùng đẹp và độc đáo đến từ thương hiệu này và điều đó làm cho Nike càng thêm trendy.Ưu điểm của những đôi giày Nike mang lại vô cùng thoải mái và vô cùng đa dạng màu sắc cũng nhiêu kiểu dáng , mang đến nhiều sự lựa chọn cho mọi người.', 3, CAST(3600000.00 AS Decimal(18, 2)), N'~/Content/images/nike_RIRFlyknit3.jpg', 97)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (4, N'Nike React Miler 3', N'Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới được thành lập tại Mỹ. Nike là nhà cung cấp giày thể thao lớn nhất trên thế giới và cũng là một nhà sản xuất thiết bị thể thao danh tiếng. Những đôi giày thể thao của Nike rất được ưu chuộng trên toàn thế giới thông qua các con số doanh thu khổng lồ mà Nike nhận được.Khách hàng từ mọi lứu tuổi , từ mọi từng lớp đều rất yêu thích những đôi giày mà Nike mang tới cho các tín đồ yêu thích giày trên toàn thế giới. Chúng ta có thể bắt gặp rất nhiều siêu sao, người mẫu, ca sĩ mang trên chân những đôi giày vô cùng đẹp và độc đáo đến từ thương hiệu này và điều đó làm cho Nike càng thêm trendy.Ưu điểm của những đôi giày Nike mang lại vô cùng thoải mái và vô cùng đa dạng màu sắc cũng nhiêu kiểu dáng , mang đến nhiều sự lựa chọn cho mọi người.
', 3, CAST(3500000.00 AS Decimal(18, 2)), N'~/Content/images/nike_RMiler3.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (5, N'Nike Metcon 7', N'Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới được thành lập tại Mỹ. Nike là nhà cung cấp giày thể thao lớn nhất trên thế giới và cũng là một nhà sản xuất thiết bị thể thao danh tiếng. Những đôi giày thể thao của Nike rất được ưu chuộng trên toàn thế giới thông qua các con số doanh thu khổng lồ mà Nike nhận được.Khách hàng từ mọi lứu tuổi , từ mọi từng lớp đều rất yêu thích những đôi giày mà Nike mang tới cho các tín đồ yêu thích giày trên toàn thế giới. Chúng ta có thể bắt gặp rất nhiều siêu sao, người mẫu, ca sĩ mang trên chân những đôi giày vô cùng đẹp và độc đáo đến từ thương hiệu này và điều đó làm cho Nike càng thêm trendy.Ưu điểm của những đôi giày Nike mang lại vô cùng thoải mái và vô cùng đa dạng màu sắc cũng nhiêu kiểu dáng , mang đến nhiều sự lựa chọn cho mọi người.
', 3, CAST(3829000.00 AS Decimal(18, 2)), N'~/Content/images/nike_Metcon7.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (6, N'Nike SB Zoom Blazer Mid EK', N'Nike là một trong những thương hiệu thể thao nổi tiếng nhất trên thế giới được thành lập tại Mỹ. Nike là nhà cung cấp giày thể thao lớn nhất trên thế giới và cũng là một nhà sản xuất thiết bị thể thao danh tiếng. Những đôi giày thể thao của Nike rất được ưu chuộng trên toàn thế giới thông qua các con số doanh thu khổng lồ mà Nike nhận được.Khách hàng từ mọi lứu tuổi , từ mọi từng lớp đều rất yêu thích những đôi giày mà Nike mang tới cho các tín đồ yêu thích giày trên toàn thế giới. Chúng ta có thể bắt gặp rất nhiều siêu sao, người mẫu, ca sĩ mang trên chân những đôi giày vô cùng đẹp và độc đáo đến từ thương hiệu này và điều đó làm cho Nike càng thêm trendy.Ưu điểm của những đôi giày Nike mang lại vô cùng thoải mái và vô cùng đa dạng màu sắc cũng nhiêu kiểu dáng , mang đến nhiều sự lựa chọn cho mọi người.
', 3, CAST(2649000.00 AS Decimal(18, 2)), N'~/Content/images/nike_SBZBMidEK.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (7, N'Adidas Stan Smith ', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới.
Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.
', 1, CAST(2500000.00 AS Decimal(18, 2)), N'~/Content/images/stanSmith.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (8, N'Adidas Yeezy 350 V2 Beluga', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới.
Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.
', 1, CAST(6000000.00 AS Decimal(18, 2)), N'~/Content/images/y350V2_B.jpg', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (9, N'Adidas Harden Stepback 3 ', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới.
Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.
', 1, CAST(23000000.00 AS Decimal(18, 2)), N'~/Content/images/hardenS3.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (11, N'Adidas Harden Vol 6', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới.
Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.
', 1, CAST(4000000.00 AS Decimal(18, 2)), N'~/Content/images/hardenV6.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (12, N'Adidas Duramo 10', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới.
Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.
', 1, CAST(1300000.00 AS Decimal(18, 2)), N'~/Content/images/duramo10.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (13, N'Vans Authentic Classic ', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(1450000.00 AS Decimal(18, 2)), N'~/Content/images/vans1.png', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (14, N'Vans Vault OG Classic Slip On', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(2600000.00 AS Decimal(18, 2)), N'~/Content/images/vans3.png', 98)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (15, N'Vans Canvas Old Skool Classic True White', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(1750000.00 AS Decimal(18, 2)), N'~/Content/images/vans5.png', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (16, N'Vans Classic SK8-HI', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/vans6.png', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (17, N'Vans Ouroboros Slip-On', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/vans7.png', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (18, N'Vans Ouroboros SK8-HI', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(2100000.00 AS Decimal(18, 2)), N'~/Content/images/vans8.png', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (19, N'Vans x National Geographic', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(3100000.00 AS Decimal(18, 2)), N'~/Content/images/vans9.png', -61)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (20, N'Vans X Moca Judy Baca', N'Vans là thương hiệu thời trang chuyên về giày trượt ván, quần áo và phụ kiện của Mỹ, được thành lập tại Anaheim, California và thuộc sở hữu của tập đoàn VF Corporation.Giày Vans siêu nổi tiếng thực chất là một thương hiệu ván trượt với giá trị hàng tỷ đô đến từ nước Mỹ. Ngay từ phong cách, thiết kế, chúng ta cũng thấy bật lên những đường nét quen thuộc của những anh chàng người Mỹ trẻ tuổi, năng động, khỏe khoắn và siêu ngầu.Những đôi giày mà Vans mang lại đều có thể phổ cập đến nhiều tín đồ mê giày trên toàn thế giới. Giá thành rẻ , đa dạng kiểu dáng và màu sắc.
', 5, CAST(2850000.00 AS Decimal(18, 2)), N'~/Content/images/vans10.png', 92)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (21, N'Converse Chuck Taylor All Star 70 Plus', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(2500000.00 AS Decimal(18, 2)), N'~/Content/images/Converse1.jpg', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (22, N'Converse Chuck Taylor All Star Dainty', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1500000.00 AS Decimal(18, 2)), N'~/Content/images/Converse2.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (23, N'Converse Chuck Taylor All Star Lift Platform Canvas', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1800000.00 AS Decimal(18, 2)), N'~/Content/images/Converse3.jpg', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (24, N'Converse Chuck Taylor All Star 1970s Archive Paint Splatter', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(2500000.00 AS Decimal(18, 2)), N'~/Content/images/Converse4.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (25, N'Converse Chuck Taylor All Star 1970s My Story', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(2000000.00 AS Decimal(18, 2)), N'~/Content/images/Converse5.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (26, N'Converse Chuck Taylor All Star Double Stack Lift My Story', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.', 2, CAST(1800000.00 AS Decimal(18, 2)), N'~/Content/images/Converse6.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (27, N'Converse Chuck Taylor All Star Wordmark', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/Converse7.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (28, N'Converse Chuck Taylor All Star Gamer Low-Top', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1000000.00 AS Decimal(18, 2)), N'~/Content/images/Converse8.jpg', 99)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (29, N'Converse Chuck Taylor All Star Valentine''s Day', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/Converse9.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (30, N'Converse Chuck Taylor All Star 1970s Mi Gente', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(2000000.00 AS Decimal(18, 2)), N'~/Content/images/Converse10.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (31, N'Converse Chuck Taylor All Star Create Future', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/Converse12.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (32, N'Converse Chuck Taylor All Star Twisted Classic Logo Play', N'Converse có lịch sử phát triển lâu đời hơn các dòng giày thể thao như Nike và Adidas. Năm 1908, Hầu tước M. Converse thành lập Công ty Giày cao su Converse ở Malden, Massachusetts. Đây chỉ là bước khởi đầu của thương hiệu, năm 1915 Converse bắt đầu sản xuất giày tennis, đây là bước ngoặt quan trọng trong lịch sử của Converse khi giày bóng rổ Converse All-Star được đưa ra thị trường vào năm 1917. Converse All Star đã trở thành đôi giày được chỉ định cho trận đấu bóng rổ quốc tế của Mỹ.Ưu điểm của Converse Classic là: rẻ, bền, đẹp. Một đôi giày phù hợp với tất cả mọi người, phù hợp với mọi set đồ của bạn. Đặc biệt sau hàng trăm năm lịch sử, công trình này chưa bao giờ lỗi thời.
', 2, CAST(1600000.00 AS Decimal(18, 2)), N'~/Content/images/Converse11.jpg', 100)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (57, N'Yeezy 350 Static', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới. Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.', 1, CAST(9500000.00 AS Decimal(18, 2)), N'~/Content/images/Yeezy350Static.jpg', 12)
INSERT [dbo].[Product] ([ProductID], [NamePro], [DecriptionPro], [CateID], [Price], [ImagePro], [Quantity]) VALUES (60, N'Yeezy 700', N'Adidas là một công ty đa quốc gia đến từ Đức, chuyên sản xuất giày dép, quần áo và phụ kiện. Adidas, thành công ty lớn thứ hai thế giới chuyên sản xuất các sản phẩm thời trang thể thao và thời trang. Sản phẩm của hãng hiện đang có mặt trên hầu khắp các thế giới. Các sản phẩm chính của thương hiệu Adidas bao gồm dép, quần áo, mũ, tất, túi xách thể thao… Đặc biệt là những đôi giày mang thương hiệu trứ danh. Ưu điểm của các sản phẩm thương hiệu Adidas là luôn được làm từ những chất liệu tốt nhất và được thiết kế với kiểu dáng tỉ mỉ, kín đáo và tinh tế. Từng đường may đều mang đến cho người sử dụng cảm giác thoải mái, dễ chịu.', 1, CAST(8500000.00 AS Decimal(18, 2)), N'~/Content/images/Yeezy 700.jpg', 25)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Voucher] ([IDVoucher], [MaVoucher], [PhanTramDis], [MotaVoucher]) VALUES (N'V01', N'DOGBEE', 15, N'20')
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([IDOrder])
REFERENCES [dbo].[OrderPro] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderPro]  WITH CHECK ADD FOREIGN KEY([IDCus])
REFERENCES [dbo].[Customer] ([IDCus])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Pro_Category] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([IDCate])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Pro_Category]
GO
USE [master]
GO
ALTER DATABASE [DBSneakerStore] SET  READ_WRITE 
GO
