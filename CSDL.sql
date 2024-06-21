USE [master]
GO
/****** Object:  Database [QLCP]    Script Date: 11/29/2022 12:11:54 AM ******/
CREATE DATABASE [QLCP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLCP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLCP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLCP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLCP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCP] SET  MULTI_USER 
GO
ALTER DATABASE [QLCP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLCP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLCP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLCP] SET QUERY_STORE = OFF
GO
USE [QLCP]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[MaBan] [nvarchar](10) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CA]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA](
	[MaCa] [nvarchar](10) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[SoTien] [int] NULL,
	[Ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUC]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUC](
	[MaCongThuc] [nvarchar](10) NOT NULL,
	[TenCongThuc] [nvarchar](50) NULL,
	[MaThucDon] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUCCHITIET]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUCCHITIET](
	[MaCongThucCT] [nvarchar](10) NOT NULL,
	[MaCongThuc] [nvarchar](10) NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThucCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONVI]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONVI](
	[MaDonVi] [nvarchar](10) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MaDonVi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[NgayVao] [datetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[PhuThu] [decimal](18, 0) NULL,
	[PhuThuTheoPhanTram] [bit] NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[GiamGiaTheoPhanTram] [bit] NULL,
	[NgayThanhToan] [datetime] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[DaThanhToan] [bit] NOT NULL,
	[MaBan] [nvarchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBANHANG](
	[MaHDBH] [nvarchar](10) NOT NULL,
	[NgayBan] [datetime] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaNCC] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHDCT] [uniqueidentifier] NOT NULL,
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaThucDon] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLKH] [nvarchar](10) NULL,
	[MaQuyen] [int] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MaKho] [nvarchar](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKhuVuc] [nvarchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [nvarchar](10) NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NoiDung] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHAHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHAHANG](
	[MaLKH] [nvarchar](10) NOT NULL,
	[TenLKH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[MaNhanVien] [nvarchar](10) NULL,
	[SoCa] [int] NULL,
	[TongTien] [float] NULL,
	[NgayNhan] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[LoaiHang_NCC] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [nvarchar](10) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCDON]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[MaThucDon] [nvarchar](10) NOT NULL,
	[TenThucDon] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MaTonKho] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[MaKho] [nvarchar](10) NULL,
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[MaTonKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B02', N'02', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B03', N'03', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B04', N'04', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B05', N'05', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B06', N'06', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B07', N'07', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B08', N'08', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B09', N'09', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B10', N'10', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B11', N'11', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B12', N'12', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B13', N'13', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B14', N'14', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B15', N'19', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B16', N'16', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B17', N'19', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B18', N'18', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B19', N'19', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B20', N'20', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B21', N'21', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B22', N'22', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B23', N'23', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B24', N'24', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B25', N'25', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B26', N'26', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B27', N'27', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B28', N'28', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B29', N'29', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B30', N'30', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B31', N'31', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B32', N'32', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B33', N'33', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B34', N'34', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B35', N'35', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B36', N'36', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B37', N'37', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B38', N'38', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B39', N'39', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B40', N'40', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B41', N'41', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B42', N'42', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B43', N'43', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B44', N'44', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B45', N'45', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B46', N'46', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B47', N'47', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B48', N'48', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B49', N'49', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B50', N'50', N'KV01')
GO
INSERT [dbo].[CA] ([MaCa], [TenCa], [MaKhuVuc], [MaNhanVien], [SoTien], [Ngay]) VALUES (N'CA03', N'Ca 3', N'KV01', N'NV03', NULL, CAST(N'2022-06-01' AS Date))
GO
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT01', N'Nước Cam', N'TD03')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT02', N'Cà phê', N'TD01')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT03', N'Đào', N'TD06')
GO
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT01', N'CT01', N'HH01', N'Kg', CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT02', N'CT03', N'HH03', N'Trai', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT03', N'CT02', N'HH02', N'Kg', CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Chai', N'Chai')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Kg', N'Kí lô gam')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Ly', N'Ly')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Trai', N'Trái')
GO
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH01', N'Cam', N'', CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH02', N'Cà phê', N'NCC03', CAST(200000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH03', N'Dừa', NULL, CAST(5000 AS Decimal(18, 0)), N'Trái')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH04', N'Đào', NULL, CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH05', N'Nho', NULL, CAST(100000 AS Decimal(18, 0)), N'Kg')
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'35941dc6-7893-4491-9302-3667c49c55a6', CAST(N'2022-11-29T00:09:08.507' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B30')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', CAST(N'2022-06-30T13:08:22.673' AS DateTime), N'KH01', N'NV02', CAST(10 AS Decimal(18, 0)), 0, CAST(110 AS Decimal(18, 0)), 0, CAST(N'2022-06-30T13:09:55.000' AS DateTime), CAST(1435900 AS Decimal(18, 0)), 1, N'B01')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', CAST(N'2022-11-29T00:07:57.630' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:08:00.000' AS DateTime), CAST(1663000 AS Decimal(18, 0)), 1, N'B02')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'78a4135f-ffe7-437a-8d26-5fbba983563c', CAST(N'2022-10-22T10:31:23.063' AS DateTime), N'KH05', N'NV02', CAST(1000 AS Decimal(18, 0)), 0, CAST(5 AS Decimal(18, 0)), 1, CAST(N'2022-10-22T10:31:49.000' AS DateTime), CAST(789500 AS Decimal(18, 0)), 1, N'B03')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd204ab64-d893-4494-9326-60b15295b63c', CAST(N'2022-11-29T00:08:45.013' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B38')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'30915360-ace1-4912-9d49-686e4cea5ce2', CAST(N'2022-11-29T00:08:56.453' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B07')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'74724245-c24e-4a5a-8e52-79607a2a14fd', CAST(N'2022-11-29T00:08:28.143' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B35')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'9e28e62b-4558-4a42-bcd1-8e943b8911db', CAST(N'2022-11-29T00:08:03.557' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B02')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'3298a35a-b8c0-4cd2-ab6b-8efd3e0c8b08', CAST(N'2022-11-29T00:09:00.540' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B05')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', CAST(N'2022-11-29T00:09:38.060' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B48')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'1648abba-ab7b-4256-8fba-9521c56acf76', CAST(N'2022-11-29T00:09:27.870' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B22')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', CAST(N'2022-11-29T00:08:35.477' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B26')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'f67135b6-a755-4dc0-85b7-9be8b12aed0b', CAST(N'2022-11-29T00:09:04.100' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B45')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'14f372ac-bb4b-40eb-8193-aa5a6c6edf5d', CAST(N'2022-06-30T13:15:28.263' AS DateTime), N'KH02', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'6176ce90-f532-4d6d-8408-b829bdf14381', CAST(N'2022-11-29T00:09:20.157' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B50')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'df51a489-9952-47c9-8717-c0527574d89d', CAST(N'2022-11-29T00:09:12.827' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B34')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'95f65f1d-829e-401e-b0e0-c074e73b15fe', CAST(N'2022-11-29T00:07:53.997' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:07:56.000' AS DateTime), CAST(663000 AS Decimal(18, 0)), 1, N'B11')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'aefbea37-1b96-4ec0-8be1-cba26dab8527', CAST(N'2022-11-29T00:08:17.437' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B11')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'aa054d7b-8a4d-4562-8518-d266081cbea8', CAST(N'2022-11-29T00:08:22.333' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B39')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'6b002bf6-f637-40d1-9f83-da089eb94c4b', CAST(N'2022-11-29T00:08:09.877' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B15')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', CAST(N'2022-11-29T00:08:41.077' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B24')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'fd32b3fa-cfb3-41ac-9984-e123fbcd7aae', CAST(N'2022-11-29T00:08:51.740' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B21')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'2082d918-aa0e-43e3-a34b-e7816550933b', CAST(N'2022-11-29T00:08:00.797' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:08:02.000' AS DateTime), CAST(5000 AS Decimal(18, 0)), 1, N'B05')
GO
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ffad7405-378a-4281-a150-0015e346c062', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2ba0cf06-632f-44ed-b97a-03c956872318', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8ba6a6d5-b2f6-4f0e-a969-048ed61e0782', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cc1138f2-cf89-4877-9460-04c0652999c5', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'41a2c409-b3f3-4411-b6ac-06cdc795b008', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'84cb2243-fbf5-4d54-aa79-06e38dafc2c6', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'75f4149b-36c9-46d5-b843-06ec79b43592', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f30f580b-a11e-4e2f-930b-073ebc4e7d40', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'47438f30-614f-4300-b201-0abc6f67d620', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'e63a50cd-bbb5-4ca7-88e4-0c07140b3a5f', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD11', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd1012c35-d8f5-4962-8572-0c4cf2f09354', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5c2ecc4f-6ade-440d-8335-0dd2aa96b87d', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD03', 2, N'1 ly không đường')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'74f43c2f-1569-4736-8c84-0e907ea55e15', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD11', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'21c0c225-a0be-4d1e-a8f2-148665513865', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4acc9b24-872f-479e-9919-17b7ebdafeb4', N'30915360-ace1-4912-9d49-686e4cea5ce2', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ed8572a4-95bc-4155-a072-18662ac1cc01', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'afd45272-fddd-4fe2-922d-1a0302adb9df', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'18b23b62-8253-402e-a318-1a7cfad33202', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'7fcf70ad-d0b6-4e58-a3de-1a898c9cf396', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd6cfe2e1-140f-4a67-b4e0-1c692aca558e', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'72f87290-3d15-47e3-8731-1d691cc4dffa', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5a0042b6-c89d-46c1-956c-21e686b99aff', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'40e68259-f647-4ddc-9100-237788534f99', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a591ecf3-cd8a-4aa1-b1e7-240f4b562cff', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4c97f9db-42c8-44b7-899e-2f01eefdc159', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'04954479-7201-4919-8403-312704a03f99', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8b81c404-a571-481a-b7ca-33be137e7b77', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'3b3196e1-ef42-42e8-9175-33bf973dd66e', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f335c178-a0dd-42b9-b0b2-343c85d33bab', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5be88e9d-cde1-4165-96bd-3827cddad9a9', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9df0c8de-b1fa-4409-89b5-387f488f2cab', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b7233115-8aed-47a0-a5cb-38ac393a1a2a', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b02cf318-77af-4ea2-8cc4-39aeb90b88f9', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'794434a1-7695-44aa-bea8-3b6417f4b7f4', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'06d8417e-b174-4138-a7b1-3c6c392ae0c3', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD11', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b83ca1a3-8314-41da-9d8d-3f1f39baa268', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'64ed2693-5092-4400-9a48-3fb2731e86a9', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'31d8a1e8-ebee-4a3c-b581-40d3a8bf6999', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f99f127f-903a-4215-8198-432783e7f2da', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2bb92b44-6881-48a3-b299-4e6afcb714dc', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'914d4179-43b9-4111-8da4-4f18afe0d3ba', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD14', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8296ae0d-e725-440c-9ebc-52663c0150dd', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'dfe3380c-a845-4c8c-9124-56955b3e240b', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'073d5e93-3ead-4908-825e-574c9cbddb47', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'56840c53-a614-435d-8a7a-5a514ea35ed4', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'893057b1-7a28-400e-8a0d-5aab3a46621e', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD05', 3, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ad813d95-a361-4cea-b112-5d8a74802f51', N'3298a35a-b8c0-4cd2-ab6b-8efd3e0c8b08', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'0926b4c4-4e2d-41f3-afba-5dcb871e41a2', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'6ab93e16-53ea-4557-90fb-5e0109390315', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd12f69f9-9cf4-4be3-a422-605c65464035', N'00000000-0000-0000-0000-000000000000', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a43e9e31-1018-4251-b833-62c1c37b43e1', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'139cceda-0047-4143-8d89-63ccc06723a1', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'16e20397-3390-426d-98d3-64d8836902cd', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4c248c90-076c-44d2-84ea-64ee32289f94', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'59518e88-0fff-454d-ac2e-65105cca0fdc', N'fd32b3fa-cfb3-41ac-9984-e123fbcd7aae', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'86156dc2-cf86-4f31-8cfa-65bac09492e2', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c783536a-c435-42df-857c-65bbba7dbda2', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cddd8848-e267-4d48-b7cc-6676b0503101', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'eec2d832-81c1-4724-b76d-696b9832dd44', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c48506a0-2fdd-46bb-92a0-6b1e998f73b3', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9d48ec0a-0325-46f1-9a53-6e7130d29205', N'fd32b3fa-cfb3-41ac-9984-e123fbcd7aae', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'69d51603-3ef4-4264-8ac2-72fdf7986fa2', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'18aedb8e-c192-495c-9407-78c3e22fa2f3', N'2082d918-aa0e-43e3-a34b-e7816550933b', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'44025dd2-f812-4bc4-966c-7ed0ff29c87b', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'fa88cf01-2364-4a3a-a0da-7edcbe84cb37', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c08649a9-b868-44f3-86ab-814128358d58', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'62e3bce4-377c-4c77-b80b-82a592f78a35', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cfa44d47-258f-43c9-8c89-833d56dba635', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'41a77d92-600f-496d-9667-83ce55b7b825', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'581d50b5-e7f7-4953-82d5-868b486ed4f7', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'18793d14-a8db-48ce-83a5-88cf3c8bfe11', N'fd32b3fa-cfb3-41ac-9984-e123fbcd7aae', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'0d500072-63ff-4fea-b62c-89a79f256aaf', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd7ecf228-eed9-4294-9d85-8ae87c00eea5', N'f67135b6-a755-4dc0-85b7-9be8b12aed0b', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'db4ce160-326a-4143-aa2f-9919592b57a1', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'3e5e2e6c-3d97-4743-8ccc-a01c42b99f3c', N'6176ce90-f532-4d6d-8408-b829bdf14381', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'e651a16c-1d73-4102-9fe2-a0597b674263', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5683d7ef-6548-4214-9ba9-a094b292d8f0', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'17f6f5eb-3384-4b02-b8ee-ab1f50f22714', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'72f332fd-2b62-4266-8010-ae53d54b5e08', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD14', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'6b998594-bd12-4a74-8578-af4ddd875180', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'423eb87e-e97c-4177-b277-b1ae41b9c864', N'1648abba-ab7b-4256-8fba-9521c56acf76', N'TD07', 2, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4d924dac-005d-43a9-8b2e-b39efb62ae93', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'bd8de05e-abd6-4d8b-bad1-b4d51e757ee0', N'6176ce90-f532-4d6d-8408-b829bdf14381', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'bbfe8e50-395c-400c-99c5-c0fb680f17be', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cf659211-9ab6-4437-8446-c15886b07226', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'02c0dcba-21bd-43d0-a0f4-c1d76e884e5e', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'fa3485b0-bbb3-4aec-890a-c33744dbbeeb', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a30a8666-8ca9-4e70-b11d-c9512b1545ca', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd60c102d-9acd-40f3-b688-d03b3ab199b6', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'50d8a4fa-5401-4595-a8c2-d22919b461b1', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'790af0e7-993c-4403-bb0a-da0b2ed60a8e', N'14f372ac-bb4b-40eb-8193-aa5a6c6edf5d', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9b028a8f-b660-4873-a5f2-e00bee6e8af3', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4957c8a0-1136-4dda-9c17-e2c069119ef5', N'9e28e62b-4558-4a42-bcd1-8e943b8911db', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'88386549-cd63-4f37-ab05-e9fdd8c45884', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd56c8f26-883a-4d7d-bf28-ea8e61e91e8e', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ea58d2d8-0432-4051-98e6-eca406082a4d', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'03c16595-9fb1-44d4-8794-ee167e518f8b', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a844124a-5fb0-427c-bd4a-f3adafb35e9f', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b524b638-a7c3-47cf-a27c-f7a86e9a2f08', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2e2ac857-4582-45b9-a220-f83b53908a4f', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD08', 1, N'')
GO
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd113aaae-fd9b-425b-b959-f8d4993a294e', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b162beb2-45d9-42f9-93e1-f8e3915edfc9', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a4bba4c9-d01d-465d-a646-fd244be97844', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD11', 1, N'')
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH05', N'Đặng Văn Minh', N'Số 120Y, Huyện Phú Tân', N'973873099', N'vhngmai@gmail.com', NULL, 1, N'ngvnminh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH06', N'Trần Quang Mạnh', N'Số 114G, Huyện Ngọc Hiển', N'993707863', N'lthingiang@gmail.com', NULL, 1, N'tanvo', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH07', N'Nguyễn Hải Sinh', N'Số 162P, Huyện Ngọc Hiển', N'933751310', N'hongdiulinh@gmail.com', NULL, 1, N'nguynhisinh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH08', N'Nguyễn An Cơ', N'Số 130D, Huyện Ngọc Hiển', N'967992239', N'honghulong@gmail.com', NULL, 1, N'nguynanc', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH09', N'Phạm Ðức Khang', N'Số 126B, Huyện Phú Tân', N'960762328', N'bithinn@gmail.com', NULL, 1, N'phmckhang', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH10', N'Bùi Thúy Ngân', N'Số 137T, Huyện Ngọc Hiển', N'987542541', N'hhngquang@gmail.com', NULL, 1, N'bithyngn', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH11', N'Đặng Thúy Hường', N'Số 124X, Huyện Phú Tân', N'985063874', N'phmbk@gmail.com', NULL, 1, N'ngthyhng', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH12', N'Lý Ðông Nhi', N'Số 127M, Huyện Ngọc Hiển', N'973019147', N'hunhanhminh@gmail.com', NULL, 1, N'lngnhi', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH13', N'Võ Hồng Ðăng', N'Số 138B, Huyện Phú Tân', N'912256290', N'phmthhng@gmail.com', NULL, 1, N'vhngng', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH14', N'Vũ Hương Mai', N'Số 164L, Huyện Ngọc Hiển', N'963272066', N'vbolm@gmail.com', NULL, 1, N'vbolm', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH15', N'Lê Thiện Giang', N'Số 159O, Huyện Ngọc Hiển', N'989505729', N'phanquanghng@gmail.com', NULL, 1, N'phanquanghng', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH16', N'Hoàng Diệu Linh', N'Số 139O, Huyện Ngọc Hiển', N'950091353', N'lgiaphong@gmail.com', NULL, 1, N'lgiaphong', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH17', N'Hoàng Hữu Long', N'Số 112Y, Huyện Phú Tân', N'936305426', N'ngbthnh@gmail.com', NULL, 1, N'ngbthnh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH18', N'Bùi Thiên Ân', N'Số 177I, Huyện Phú Tân', N'951363207', N'hphcan@gmail.com', NULL, 1, N'hphcan', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH19', N'Hồ Hồng Quang', N'Số 127I, Huyện Ngọc Hiển', N'971144356', N'hongtunt@gmail.com', NULL, 1, N'hongtunt', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH20', N'Phạm Bá Kỳ', N'Số 165M, Huyện Phú Tân', N'948648003', N'nguynvitquyt@gmail.com', NULL, 1, N'nguynvitquyt', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH21', N'Huỳnh Anh Minh', N'Số 111X, Huyện Phú Tân', N'928598541', N'hunhqulm@gmail.com', NULL, 1, N'hunhqulm', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH22', N'Phạm Thế Hùng', N'Số 163A, Huyện Ngọc Hiển', N'909948028', N'thanhthin@gmail.com', NULL, 1, N'thanhthin', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH23', N'Phạm Kim Ngân', N'Số 159P, Huyện Phú Tân', N'978681896', N'phmminhnht@gmail.com', NULL, 1, N'phmminhnht', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH24', N'Huỳnh Vy Lan', N'Số 116E, Huyện Phú Tân', N'994079666', N'hongquanglc@gmail.com', NULL, 1, N'hongquanglc', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH25', N'Bùi Linh Chi', N'Số 196K, Huyện Phú Tân', N'969902605', N'lhut@gmail.com', NULL, 1, N'lhut', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH26', N'Đặng Thế Doanh', N'Số 135Y, Huyện Ngọc Hiển', N'932123476', N'phanctng@gmail.com', NULL, 1, N'phanctng', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH27', N'Nguyễn Bạch Loan', N'Số 126X, Huyện Ngọc Hiển', N'955004038', N'honghngqu@gmail.com', NULL, 1, N'honghngqu', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH28', N'Trần Bích Thủy', N'Số 111U, Huyện Phú Tân', N'943569645', N'vminhthy@gmail.com', NULL, 1, N'vminhthy', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH29', N'Lê Nam Tú', N'Số 167Y, Huyện Phú Tân', N'981174167', N'biikhanh@gmail.com', NULL, 1, N'biikhanh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH30', N'Võ Diệu Hoa', N'Số 117U, Huyện Phú Tân', N'937260865', N'lbchloan@gmail.com', NULL, 1, N'lbchloan', N'123')
GO
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K01', N'Kho chính')
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K02', N'Kho phụ')
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K03', N'Kho bếp')
GO
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV01', N'Tầng trệt')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02', N'Lầu 1')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV03', N'Lầu 2')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV04', N'Phòng lạnh')
GO
INSERT [dbo].[LUONG] ([MaNhanVien], [SoCa], [TongTien], [NgayNhan]) VALUES (N'NV01', 10, 10000, CAST(N'2022-06-30T13:58:00.000' AS DateTime))
INSERT [dbo].[LUONG] ([MaNhanVien], [SoCa], [TongTien], [NgayNhan]) VALUES (N'NV01', 10, 750000, CAST(N'2022-06-30T13:58:00.000' AS DateTime))
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC01', N'PepsiCo Việt Nam', N'Thành phố Hồ Chí Minh', N'19001220', N'pepsi@gmail.com', N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC02', N'CoCaCoLa', N'Thành phố Hồ Chí Minh', N'1900555584', N'cocola@gmal.com', N'Sữa trái cây')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC03', N'Trung Nguyên', N'Thành phố Buôn Ma Thuột', N'0909300096', NULL, N'Cà phê')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC04', N'Lavie', N'Long An', N'0723511801', NULL, N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC05', N'Red Bull', N'Bình Dương', N'0274374916', NULL, N'Nước tăng lực')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV02', N'Trần Thị Ngọc Huyền ', N'Vĩnh Long', N'033854225', N'huyen@gmail.com', N'ngochuyen', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV03', N'Nguyễn Thanh Huy', N'Vĩnh Long', N'098873849', N'huy@gmail.com', N'thanhhuy', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV04', N'Nguyễn Chí Linh', N'Vĩnh Long', N'038565884', N'linh@gmail.com', N'chilinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV05', N'Nguyễn Hoàng Kha', N'Vĩnh Long', N'922374863', N'hoangkha@duck.com', N'hkha', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV06', N'Nguyễn Hoàng Phúc', N'Vĩnh Long', N'385467389', N'hphuc@gmail.com', N'hphuc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV07', N'Đỗ Hoàng Phúc', N'Vĩnh Long', N'983764788', N'hoangphuc@gmai.com', N'phuc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV08', N'Ngô Trúc', N'Long Hồ', N'354655678', N'truc@gmail.com', N'ntruc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV09', N'Hồ Hồng Sơn', N'Số 155P, Huyện Ngọc Hiển', N'930251761', N'hhngsn@gmail.com', N'hhngsn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV10', N'Phan Nguyệt Cát', N'Số 107A, Huyện Phú Tân', N'929751696', N'phannguytct@gmail.com', N'phannguytct', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV100', N'Đỗ Ngọc Khương', N'Số 141M, Huyện Ngọc Hiển', N'922999408', N'ngckhng@gmail.com', N'ngckhng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV101', N'Vũ Phú Hải', N'Số 118V, Huyện Phú Tân', N'986841981', N'vphhi@gmail.com', N'vphhi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV102', N'Hoàng Tuấn Kiệt', N'Số 117E, Huyện Ngọc Hiển', N'929161105', N'hongtunkit@gmail.com', N'hongtunkit', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV103', N'Hoàng Thu Hiền', N'Số 162M, Huyện Ngọc Hiển', N'906880013', N'hongthuhin@gmail.com', N'hongthuhin', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV11', N'Võ Bảo Lâm', N'Số 130F, Huyện Ngọc Hiển', N'954730357', N'vbolm@gmail.com', N'vbolm', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV12', N'Phan Quang Hùng', N'Số 140N, Huyện Phú Tân', N'914738411', N'phanquanghng@gmail.com', N'phanquanghng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV13', N'Lý Gia Phong', N'Số 100E, Huyện Phú Tân', N'971675421', N'lgiaphong@gmail.com', N'lgiaphong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV14', N'Đặng Bá Thịnh', N'Số 150Y, Huyện Ngọc Hiển', N'999168774', N'ngbthnh@gmail.com', N'ngbthnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV15', N'Hồ Phước An', N'Số 133T, Huyện Ngọc Hiển', N'955410460', N'hphcan@gmail.com', N'hphcan', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV16', N'Hoàng Tuấn Tú', N'Số 167V, Huyện Ngọc Hiển', N'961491829', N'hongtunt@gmail.com', N'hongtunt', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV17', N'Nguyễn Việt Quyết', N'Số 167M, Huyện Ngọc Hiển', N'909874392', N'nguynvitquyt@gmail.com', N'nguynvitquyt', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV18', N'Huỳnh Quế Lâm', N'Số 133A, Huyện Ngọc Hiển', N'964300729', N'hunhqulm@gmail.com', N'hunhqulm', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV19', N'Đỗ Thanh Thiên', N'Số 183R, Huyện Ngọc Hiển', N'923383432', N'thanhthin@gmail.com', N'thanhthin', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV20', N'Phạm Minh Nhật', N'Số 169E, Huyện Phú Tân', N'990836238', N'phmminhnht@gmail.com', N'phmminhnht', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV21', N'Hoàng Quang Lộc', N'Số 129H, Huyện Ngọc Hiển', N'966399579', N'hongquanglc@gmail.com', N'hongquanglc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV22', N'Lý Hữu Ðạt', N'Số 139X, Huyện Ngọc Hiển', N'988103261', N'lhut@gmail.com', N'lhut', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV23', N'Phan Ðức Tường', N'Số 117M, Huyện Ngọc Hiển', N'999146050', N'phanctng@gmail.com', N'phanctng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV24', N'Hoàng Hồng Quế', N'Số 122Y, Huyện Phú Tân', N'984765101', N'honghngqu@gmail.com', N'honghngqu', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV25', N'Võ Minh Thúy', N'Số 129E, Huyện Ngọc Hiển', N'949820389', N'vminhthy@gmail.com', N'vminhthy', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV26', N'Bùi Ái Khanh', N'Số 111Q, Huyện Ngọc Hiển', N'926531689', N'biikhanh@gmail.com', N'biikhanh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV27', N'Lý Bạch Loan', N'Số 165H, Huyện Ngọc Hiển', N'976344468', N'lbchloan@gmail.com', N'lbchloan', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV28', N'Đỗ Hồng Sơn', N'Số 147D, Huyện Phú Tân', N'991800315', N'hngsn@gmail.com', N'hngsn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV29', N'Dương Xuân Hiếu', N'Số 103O, Huyện Ngọc Hiển', N'965713710', N'dngxunhiu@gmail.com', N'dngxunhiu', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV30', N'Lê Thu Hiền', N'Số 154Q, Huyện Ngọc Hiển', N'973873099', N'lthuhin@gmail.com', N'lthuhin', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV31', N'Đặng Thụy Trâm', N'Số 172F, Huyện Phú Tân', N'993707863', N'ngthytrm@gmail.com', N'ngthytrm', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV32', N'Hồ Thanh Tuyền', N'Số 144O, Huyện Phú Tân', N'933751310', N'hthanhtuyn@gmail.com', N'hthanhtuyn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV33', N'Võ Trung Dũng', N'Số 100P, Huyện Ngọc Hiển', N'967992239', N'vtrungdng@gmail.com', N'vtrungdng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV34', N'Đặng Văn Minh', N'Số 190E, Huyện Ngọc Hiển', N'960762328', N'ngvnminh@gmail.com', N'ngvnminh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV35', N'Trần Quang Mạnh', N'Số 120I, Huyện Ngọc Hiển', N'987542541', N'trnquangmnh@gmail.com', N'tanvo', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV36', N'Nguyễn Hải Sinh', N'Số 149M, Huyện Phú Tân', N'985063874', N'nguynhisinh@gmail.com', N'nguynhisinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV37', N'Nguyễn An Cơ', N'Số 120Y, Huyện Phú Tân', N'973019147', N'nguynanc@gmail.com', N'nguynanc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV38', N'Phạm Ðức Khang', N'Số 114G, Huyện Ngọc Hiển', N'912256290', N'phmckhang@gmail.com', N'phmckhang', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV39', N'Bùi Thúy Ngân', N'Số 162P, Huyện Ngọc Hiển', N'963272066', N'bithyngn@gmail.com', N'bithyngn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV40', N'Đặng Thúy Hường', N'Số 130D, Huyện Ngọc Hiển', N'989505729', N'ngthyhng@gmail.com', N'ngthyhng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV41', N'Lý Ðông Nhi', N'Số 126B, Huyện Phú Tân', N'950091353', N'lngnhi@gmail.com', N'lngnhi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV42', N'Võ Hồng Ðăng', N'Số 137T, Huyện Ngọc Hiển', N'936305426', N'vhngng@gmail.com', N'vhngng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV43', N'Vũ Hương Mai', N'Số 124X, Huyện Phú Tân', N'951363207', N'vhngmai@gmail.com', N'vhngmai', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV44', N'Lê Thiện Giang', N'Số 127M, Huyện Ngọc Hiển', N'971144356', N'lthingiang@gmail.com', N'lthingiang', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV45', N'Hoàng Diệu Linh', N'Số 138B, Huyện Phú Tân', N'948648003', N'hongdiulinh@gmail.com', N'hongdiulinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV46', N'Hoàng Hữu Long', N'Số 164L, Huyện Ngọc Hiển', N'928598541', N'honghulong@gmail.com', N'honghulong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV47', N'Bùi Thiên Ân', N'Số 159O, Huyện Ngọc Hiển', N'909948028', N'bithinn@gmail.com', N'bithinn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV48', N'Hồ Hồng Quang', N'Số 139O, Huyện Ngọc Hiển', N'978681896', N'hhngquang@gmail.com', N'hhngquang', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV49', N'Phạm Bá Kỳ', N'Số 112Y, Huyện Phú Tân', N'994079666', N'phmbk@gmail.com', N'phmbk', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV50', N'Huỳnh Anh Minh', N'Số 177I, Huyện Phú Tân', N'969902605', N'hunhanhminh@gmail.com', N'hunhanhminh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV51', N'Phạm Thế Hùng', N'Số 127I, Huyện Ngọc Hiển', N'932123476', N'phmthhng@gmail.com', N'phmthhng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV52', N'Phạm Kim Ngân', N'Số 165M, Huyện Phú Tân', N'955004038', N'phmkimngn@gmail.com', N'phmkimngn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV53', N'Huỳnh Vy Lan', N'Số 111X, Huyện Phú Tân', N'943569645', N'hunhvylan@gmail.com', N'hunhvylan', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV54', N'Bùi Linh Chi', N'Số 163A, Huyện Ngọc Hiển', N'981174167', N'bilinhchi@gmail.com', N'bilinhchi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV55', N'Đặng Thế Doanh', N'Số 159P, Huyện Phú Tân', N'937260865', N'ngthdoanh@gmail.com', N'ngthdoanh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV56', N'Nguyễn Bạch Loan', N'Số 116E, Huyện Phú Tân', N'935690783', N'nguynbchloan@gmail.com', N'nguynbchloan', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV57', N'Trần Bích Thủy', N'Số 196K, Huyện Phú Tân', N'939965363', N'trnbchthy@gmail.com', N'trnbchthy', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV58', N'Lê Nam Tú', N'Số 135Y, Huyện Ngọc Hiển', N'900530727', N'lnamt@gmail.com', N'lnamt', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV59', N'Võ Diệu Hoa', N'Số 126X, Huyện Ngọc Hiển', N'973047952', N'vdiuhoa@gmail.com', N'vdiuhoa', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV60', N'Phan Bá Kỳ', N'Số 111U, Huyện Phú Tân', N'933347037', N'phanbk@gmail.com', N'phanbk', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV61', N'Vũ Tuyết Mai', N'Số 167Y, Huyện Phú Tân', N'989691264', N'vtuytmai@gmail.com', N'vtuytmai', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV62', N'Phan Thiện Luân', N'Số 117U, Huyện Phú Tân', N'927370491', N'phanthinlun@gmail.com', N'phanthinlun', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV63', N'Vũ Thiên Lam', N'Số 179A, Huyện Ngọc Hiển', N'905133116', N'vthinlam@gmail.com', N'vthinlam', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV64', N'Lý Mai Linh', N'Số 140G, Huyện Ngọc Hiển', N'942399100', N'lmailinh@gmail.com', N'lmailinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV65', N'Đỗ Ðức Sinh', N'Số 131Q, Huyện Ngọc Hiển', N'944535777', N'csinh@gmail.com', N'csinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV66', N'Bùi Minh Kỳ', N'Số 194O, Huyện Phú Tân', N'952682235', N'biminhk@gmail.com', N'biminhk', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV67', N'Đỗ Bích Thủy', N'Số 181Y, Huyện Ngọc Hiển', N'997048738', N'bchthy@gmail.com', N'bchthy', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV68', N'Huỳnh Tất Hòa', N'Số 156S, Huyện Phú Tân', N'998743716', N'hunhttha@gmail.com', N'hunhttha', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV69', N'Phạm Đăng Quang', N'Số 118P, Huyện Ngọc Hiển', N'974870987', N'phmngquang@gmail.com', N'phmngquang', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV70', N'Vũ Trung Thành', N'Số 168V, Huyện Phú Tân', N'928493156', N'vtrungthnh@gmail.com', N'vtrungthnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV71', N'Hồ Ðắc Di', N'Số 189G, Huyện Ngọc Hiển', N'905096498', N'hcdi@gmail.com', N'hcdi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV72', N'Vũ Thuận Thành', N'Số 150D, Huyện Ngọc Hiển', N'996261802', N'vthunthnh@gmail.com', N'vthunthnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV73', N'Hồ Hạnh Chi', N'Số 135Y, Huyện Ngọc Hiển', N'922001925', N'hhnhchi@gmail.com', N'hhnhchi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV74', N'Hồ Mộng Thu', N'Số 146U, Huyện Ngọc Hiển', N'933822194', N'hmngthu@gmail.com', N'hmngthu', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV75', N'Dương Tuấn Tài', N'Số 166Q, Huyện Ngọc Hiển', N'914412422', N'dngtunti@gmail.com', N'dngtunti', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV76', N'Võ Gia Linh', N'Số 129Q, Huyện Ngọc Hiển', N'911158999', N'vgialinh@gmail.com', N'vgialinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV77', N'Đỗ Phú Ân', N'Số 138S, Huyện Phú Tân', N'947162892', N'phn@gmail.com', N'phn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV78', N'Đỗ Thu Linh', N'Số 118G, Huyện Phú Tân', N'907430148', N'thulinh@gmail.com', N'thulinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV79', N'Nguyễn Thu Hằng', N'Số 173H, Huyện Ngọc Hiển', N'946385967', N'nguynthuhng@gmail.com', N'nguynthuhng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV80', N'Lý Ðình Hợp', N'Số 133U, Huyện Ngọc Hiển', N'993915937', N'lnhhp@gmail.com', N'lnhhp', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV81', N'Đặng Hồng Lâm', N'Số 176O, Huyện Ngọc Hiển', N'931321659', N'nghnglm@gmail.com', N'nghnglm', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV82', N'Lê Thục Ðình', N'Số 113T, Huyện Phú Tân', N'967574613', N'lthcnh@gmail.com', N'lthcnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV83', N'Bùi Minh Hoàng', N'Số 177D, Huyện Ngọc Hiển', N'929786406', N'biminhhong@gmail.com', N'biminhhong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV84', N'Phan Tiến Hiệp', N'Số 133R, Huyện Phú Tân', N'970067810', N'phantinhip@gmail.com', N'phantinhip', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV85', N'Dương Chí Kiên', N'Số 192E, Huyện Ngọc Hiển', N'976242693', N'dngchkin@gmail.com', N'dngchkin', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV86', N'Đặng Hà Phương', N'Số 123C, Huyện Ngọc Hiển', N'980739537', N'nghphng@gmail.com', N'nghphng', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV87', N'Huỳnh Hồng Lĩnh', N'Số 156P, Huyện Phú Tân', N'999544122', N'hunhhnglnh@gmail.com', N'hunhhnglnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV88', N'Trần Mỹ Huyền', N'Số 116P, Huyện Ngọc Hiển', N'931337835', N'trnmhuyn@gmail.com', N'trnmhuyn', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV89', N'Phan Tâm Hiền', N'Số 117L, Huyện Ngọc Hiển', N'956980412', N'phantmhin@gmail.com', N'phantmhin', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV90', N'Đỗ Ngọc Cảnh', N'Số 192D, Huyện Ngọc Hiển', N'935360645', N'ngccnh@gmail.com', N'ngccnh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV91', N'Dương Phụng Việt', N'Số 162P, Huyện Ngọc Hiển', N'910980062', N'dngphngvit@gmail.com', N'dngphngvit', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV92', N'Phạm Hữu Hoàng', N'Số 190F, Huyện Ngọc Hiển', N'917143680', N'phmhuhong@gmail.com', N'phmhuhong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV93', N'Bùi Phương Hoa', N'Số 178E, Huyện Ngọc Hiển', N'995297187', N'biphnghoa@gmail.com', N'biphnghoa', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV94', N'Huỳnh Hữu Lễ', N'Số 199K, Huyện Ngọc Hiển', N'923823790', N'hunhhul@gmail.com', N'hunhhul', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV95', N'Hoàng Phượng Nga', N'Số 140C, Huyện Phú Tân', N'974343297', N'hongphngnga@gmail.com', N'hongphngnga', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV96', N'Ngô Bảo An', N'Số 105F, Huyện Ngọc Hiển', N'963548021', N'ngboan@gmail.com', N'ngboan', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV97', N'Dương Xuân Cao', N'Số 194A, Huyện Ngọc Hiển', N'950460076', N'dngxuncao@gmail.com', N'dngxuncao', N'1234', N'1')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV98', N'Dương Hương Nhi', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'dnghngnhi', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV99', N'Trần Ý Bình', N'Số 104E, Huyện Ngọc Hiển', N'904572068', N'trnbnh@gmail.com', N'trnbnh', N'1234', N'1')
GO
INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien]) VALUES (N'PN01', CAST(N'2022-06-03' AS Date), N'NV01', N'NCC01', 10000000)
GO
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX01', CAST(N'2022-01-01' AS Date), N'NV01', N'KH01', 100000)
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX02', CAST(N'2022-01-01' AS Date), N'NV02', N'KH02', 200000)
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX03', CAST(N'2022-01-12' AS Date), N'NV03', N'KH03', 900000)
GO
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD01', N'Cà phê', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD02', N'Nước dừa', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD03', N'Ép cam', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD04', N'Nước suối', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD05', N'Nutri Boost', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD06', N'Trà đào', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD07', N'Nước tăng lực', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD08', N'Sinh tố bơ', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD09', N'Sinh tố sầu riêng', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD10', N'Sinh tố sầu riêng', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD11', N'Ép nho', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD12', N'Ép lê', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD13', N'Chanh dây', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD14', N'Soda', CAST(250000 AS Decimal(18, 0)))
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_MaHD]  DEFAULT (newid()) FOR [MaHD]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayVao]  DEFAULT (getdate()) FOR [NgayVao]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_PhuThuTheoPhanTram]  DEFAULT ((1)) FOR [PhuThuTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_GiamGiaTheoPhanTram]  DEFAULT ((1)) FOR [GiamGiaTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HOADONCHITIET_MaHDCT]  DEFAULT (newid()) FOR [MaHDCT]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HoaDonChiTiet_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BaoCaoDoanhThu]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT NgayVao = FORMAT(HOADON.NgayVao, 'dd/MM/yyyy HH:mm:ss')
	, Ban.TenBan
	, dbo.KHUVUC.TenKhuVuc
	, dbo.KHACHHANG.TenKH
	, dbo.NHANVIEN.TenNV
	, dbo.THUCDON.TenThucDon
	, dbo.THUCDON.Gia
	, dbo.HOADONCHITIET.SoLuong
	, ThanhTien = (dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong)
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.BAN, dbo.KHUVUC, dbo.KHACHHANG, dbo.NHANVIEN, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADON.MaBan = dbo.BAN.MaBan
	AND dbo.KHUVUC.MaKhuVuc = dbo.BAN.MaKhuVuc
	AND dbo.HOADON.MaKH = dbo.KHACHHANG.MaKH
	AND dbo.HOADON.MaNV = dbo.NHANVIEN.MaNV
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllHoaDonChiTiet]
@MaHD UNIQUEIDENTIFIER
AS
BEGIN
SELECT
	MaHDCT
	,MaHD
	,MaThucDon
	,TenThucDon = (SELECT TenThucDon FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,Gia = (SELECT Gia FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,SoLuong
	,GhiChu
FROM HOADONCHITIET
WHERE MaHD = (SELECT MaHD FROM dbo.HOADON WHERE MaHD = @MaHD AND DaThanhToan = 0)
END
GO
/****** Object:  StoredProcedure [dbo].[LayChiTietHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 4. Get chi tiết hóa đơn theo mã hóa đơn
CREATE PROC [dbo].[LayChiTietHoaDon]
@MaHD nvarchar(10)
AS
Begin
SELECT MaHD, MaThucDon, SoLuong, GhiChu FROM dbo.HoaDonChiTiet WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachBan]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[LayDanhSachBan] 
@MaKhuVuc nvarchar(10)
AS
Begin
SELECT MaBan, TenBan, MaKhuVuc, DaThanhToan = ISNULL((SELECT TOP 1 ISNULL(DaThanhToan, 1) FROM dbo.HOADON WHERE MaBan = Ban.MaBan ORDER BY NgayVao DESC), 1) FROM BAN 
WHERE 

MaKhuVuc = (CASE WHEN @MaKhuVuc = '' THEN MaKhuVuc ELSE @MaKhuVuc END) ORDER BY TenBan
END
GO
/****** Object:  StoredProcedure [dbo].[LayHoaDonMoiNhat]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayHoaDonMoiNhat]
@MaBan nvarchar(10)
AS
Begin
SELECT TOP 1 MaHD, NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, NgayThanhToan, ThanhTien, DaThanhToan, MaBan  FROM dbo.HOADON WHERE MaBan = @MaBan ORDER BY NgayVao DESC
END

GO
/****** Object:  StoredProcedure [dbo].[LayTatCaKhuVuc]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1. Get tất cả khu vực
CREATE PROCEDURE [dbo].[LayTatCaKhuVuc]
AS
SELECT MaKhuVuc = '', TenKhuVuc = N'Tất cả' UNION SELECT MaKhuVuc, TenKhuVuc FROM KHUVUC ORDER BY MaKhuVuc
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDon]
	@NgayVao datetime
	,@MaKH nvarchar(10)
	,@MaNV nvarchar(10)
	,@PhuThu decimal(18,0)
	,@PhuThuTheoPhanTram bit
	,@GiamGia decimal(18,0)
	,@GiamGiaTheoPhanTram bit
	,@MaBan nvarchar(10)
AS
BEGIN
INSERT INTO HOADON
(
	NgayVao
	,MaKH
	,MaNV
	,PhuThu
	,PhuThuTheoPhanTram
	,GiamGia
	,GiamGiaTheoPhanTram
	,MaBan
)
OUTPUT Inserted.MaHD
VALUES
(
	@NgayVao
	,@MaKH
	,@MaNV
	,@PhuThu
	,@PhuThuTheoPhanTram
	,@GiamGia
	,@GiamGiaTheoPhanTram
	,@MaBan
)
END
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDonChiTiet]
	@Loai NVARCHAR(10)
	,@MaHDCT uniqueidentifier
	,@MaHD uniqueidentifier
	,@MaThucDon nvarchar(10)
	,@SoLuong int
	,@GhiChu nvarchar(200)
AS
BEGIN
IF(@Loai='them')
BEGIN
INSERT INTO HOADONCHITIET
(
	MaHD
	,MaThucDon
	,SoLuong
	,GhiChu
)
OUTPUT Inserted.MaHDCT
VALUES
(
	@MaHD
	,@MaThucDon
	,@SoLuong
	,@GhiChu
)
END
ELSE
BEGIN
UPDATE HOADONCHITIET
SET 
	MaHD = @MaHD
	,MaThucDon = @MaThucDon
	,SoLuong = @SoLuong
	,GhiChu = @GhiChu
OUTPUT Inserted.MaHDCT
WHERE MaHDCT = @MaHDCT
END
END
GO
/****** Object:  StoredProcedure [dbo].[PhanQuyen]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PhanQuyen]
@Username nvarchar(20),
@Password nvarchar(20),
@NhanVien bit
as
BEGIN
IF @NhanVien = 1
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV, MaKH = '', TenNV, TenKH = '' FROM dbo.NHANVIEN WHERE TenDangNhap = @Username AND MatKhau = @Password
ELSE
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV = '', MaKH, TenNV = '', TenKH FROM dbo.KHACHHANG WHERE TenDangNhap = @Username AND MatKhau = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDon]
@MaHD UNIQUEIDENTIFIER, @NgayVao datetime, @MaKH nvarchar(10), @MaNV nvarchar(10), @PhuThu DECIMAL(18,0), @PhuThuTheoPhanTram bit, @GiamGia DECIMAL(18,0), @GiamGiaTheoPhanTram bit, @NgayThanhToan datetime, @ThanhTien DECIMAL(18,0), @DaThanhToan bit, @MaBan nvarchar(10)
AS
Begin
UPDATE dbo.HOADON SET NgayVao = @NgayVao, MaKH = @MaKH, MaNV = @MaNV, PhuThu = @PhuThu, PhuThuTheoPhanTram = @PhuThuTheoPhanTram, GiamGia = @GiamGia, GiamGiaTheoPhanTram = @GiamGiaTheoPhanTram, NgayThanhToan = @NgayThanhToan, ThanhTien = @ThanhTien, DaThanhToan = @DaThanhToan, MaBan = @MaBan WHERE MaHD = @MaHD
END
-- 10. Xóa hóa đơn
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER, @SoLuong int, @GhiChu nvarchar(200)
AS
Begin
UPDATE dbo.HoaDonChiTiet SET SoLuong = @SoLuong, GhiChu = @GhiChu WHERE MaHDCT = @MaHDCT
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemHoaDon]
@NgayVao DATETIME
, @MaKH nvarchar(10)
, @MaNV nvarchar(10)
, @PhuThu DECIMAL(18,0)
, @PhuThuTheoPhanTram BIT
, @GiamGia DECIMAL(18,0)
, @GiamGiaTheoPhanTram BIT
, @MaBan nvarchar(10)
AS
Begin
INSERT INTO dbo.HOADON 
(NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, MaBan, DaThanhToan)
OUTPUT Inserted.MaHD
VALUES (@NgayVao, @MaKH, @MaNV, @PhuThu, @PhuThuTheoPhanTram, @GiamGia, @GiamGiaTheoPhanTram, @MaBan, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 5.  thêm hóa đơn chi tiết
CREATE PROC [dbo].[ThemHoaDonChiTiet]
@MaHD nvarchar(10), @MaThucDid nvarchar(10), @SoLuong int, @GhiChu nvarchar(50)
AS
Begin
INSERT INTO dbo.HoaDonChiTiet (MaHD, MaThucDon, SoLuong, GhiChu) VALUES (@MaHD, @MaThucDid, @SoLuong, @GhiChu)
END
-- 6. sửa hóa đơn chi tiết
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTien]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTien]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT SUM(dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong) AS Tong
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNam]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNam]
@Nam datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE YEAR(NgayVao) = YEAR(@Nam)
END
-- 14. tính tổng thành tiền theo tuần
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNgay]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNgay]
@Ngay datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE Day(NgayVao) = @Ngay
END
-- 12. tính tổng thành tiền theo tháng
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoThang]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoThang]
@Thang datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE MONTH(NgayVao) = MONTH(@Thang)
END
-- 13. tính tổng thành tiền theo năm
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoTuan]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoTuan]
@Tuan int
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE DATEPART(WEEK, NgayVao) = @Tuan
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDon]
@MaHD UNIQUEIDENTIFIER
AS
Begin
	DELETE FROM dbo.HOADON WHERE MaHD = @MaHD
	DELETE FROM dbo.HOADONCHITIET WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER
AS
Begin
DELETE FROM dbo.HoaDonChiTiet WHERE MaHDCT = @MaHDCT
END
-- 8. Thêm hóa đơn
GO
USE [master]
GO
ALTER DATABASE [QLCP] SET  READ_WRITE 
GO
