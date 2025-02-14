USE [QuanLyBanVeMayBay]
GO
/****** Object:  Table [dbo].[ChiTietChuyenBay]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietChuyenBay](
	[MaChiTietChuyenBay] [int] NOT NULL,
	[MaChuyenBay] [nvarchar](50) NULL,
	[SanBayTrungGian] [nvarchar](50) NULL,
	[ThoiGianDung] [smallint] NULL,
	[GhiChu] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenBay]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenBay](
	[MaChuyenBay] [nvarchar](50) NULL,
	[MaTuyenBay] [nvarchar](50) NULL,
	[NgayGio] [datetime] NULL,
	[ThoiGianBay] [smallint] NULL,
	[SoLuongGheHang1] [smallint] NULL,
	[SoLuongGheHang2] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DoanhThuThang]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DoanhThuThang](
	[MaCTDoanhThuThang] [nvarchar](50) NULL,
	[MaDoanhThuThang] [nvarchar](50) NULL,
	[MaChuyenBay] [nvarchar](50) NULL,
	[SoVe] [int] NULL,
	[TyLe] [float] NULL,
	[DoanhThu] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThuNam]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThuNam](
	[MaDoanhThuNam] [nvarchar](50) NULL,
	[Nam] [int] NULL,
	[TongDoanhThuNam] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThuThang]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThuThang](
	[MaDoanhThuThang] [nvarchar](50) NULL,
	[Thang] [tinyint] NULL,
	[MaDoanhThuNam] [nvarchar](50) NULL,
	[SoChuyenBay] [int] NULL,
	[TyLe] [float] NULL,
	[TongDoanhThuThang] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonGia]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonGia](
	[MaDonGia] [nvarchar](50) NULL,
	[MaTuyenBay] [nvarchar](50) NULL,
	[MaHangVe] [nvarchar](50) NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangVe]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangVe](
	[MaHangVe] [nvarchar](50) NULL,
	[TenHangVe] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HanhKhach]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhKhach](
	[MaHanhKhach] [nvarchar](50) NULL,
	[TenHanhKhach] [nvarchar](50) NULL,
	[CMND] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatCho]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatCho](
	[MaPhieuDat] [int] NOT NULL,
	[MaChuyenBay] [nvarchar](50) NULL,
	[MaHanhKhach] [nvarchar](50) NULL,
	[MaHangVe] [nvarchar](50) NULL,
	[GiaTien] [float] NULL,
	[NgayDat] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanBay]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanBay](
	[MaSanBay] [nvarchar](50) NULL,
	[TenSanBay] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamSo]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamSo](
	[ThoiGianBayToiThieu] [int] NULL,
	[SoSanBayTrungGianToiDa] [int] NULL,
	[ThoiGianDungToiThieu] [int] NULL,
	[ThoiGianDungToiDa] [int] NULL,
	[TGChamNhatDatVe] [int] NULL,
	[TGChamNhatHuyDatVe] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangVe]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangVe](
	[MaChuyenBay] [nvarchar](50) NULL,
	[SoGheTrong] [smallint] NULL,
	[SoGheDat] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenBay]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenBay](
	[MaTuyenBay] [nvarchar](50) NULL,
	[SanBayDi] [nvarchar](50) NULL,
	[SanBayDen] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeChuyenBay]    Script Date: 1/17/2021 5:43:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeChuyenBay](
	[MaVe] [int] NOT NULL,
	[MaChuyenBay] [nvarchar](50) NULL,
	[MaHangVe] [nvarchar](50) NULL,
	[MaHanhKhach] [nvarchar](50) NULL,
	[GiaTien] [float] NULL
) ON [PRIMARY]
GO
