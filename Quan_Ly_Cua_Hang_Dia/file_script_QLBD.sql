USE [QUANLYBANGDIA]
GO
/****** Object:  Table [dbo].[BANGDIA]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGDIA](
	[MABD] [nvarchar](10) NOT NULL,
	[TENBD] [nvarchar](50) NOT NULL,
	[HANGSANXUAT] [int] NOT NULL,
	[GHICHU] [nvarchar](100) NULL,
	[DONGIA] [money] NOT NULL,
	[TINHTRANG] [int] NULL CONSTRAINT [BANGDIA_DF_TINHTRANG]  DEFAULT ((1)),
	[ma_THELOAI_Bang_Dia] [int] NOT NULL,
	[SOLUONGTON] [int] NOT NULL,
	[HINH] [nvarchar](50) NULL,
 CONSTRAINT [BANGDIA_PK] PRIMARY KEY CLUSTERED 
(
	[MABD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MAHD] [varchar](10) NOT NULL,
	[MABD] [nvarchar](10) NOT NULL,
	[SONGAYDUOCMUON] [int] NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[TINHTRANG] [int] NOT NULL,
 CONSTRAINT [CHITIETHOADON_PK] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HANGSANXUAT]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGSANXUAT](
	[MaHANGSANXUAT] [int] NOT NULL,
	[TenHANGSANXUAT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHANGSANXUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [varchar](10) NOT NULL,
	[NGAYLAP] [date] NULL,
	[MAKH] [varchar](10) NOT NULL,
 CONSTRAINT [HOADON_PK] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](10) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[DIENTHOAI] [varchar](20) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[GIOITINH] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [KHACHHANG_PK] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](10) NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[DIENTHOAI] [varchar](20) NULL,
	[DIACHI] [nvarchar](100) NULL,
	[GIOITINH] [int] NOT NULL,
	[NGAYSINH] [date] NULL,
 CONSTRAINT [NHANVIEN_PK] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENTAIKHOAN] [varchar](30) NOT NULL,
	[MATKHAU] [nvarchar](128) NOT NULL,
	[LOAITK] [smallint] NOT NULL,
	[MANV] [varchar](10) NOT NULL,
 CONSTRAINT [TAIKHOAN_PK] PRIMARY KEY CLUSTERED 
(
	[TENTAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 12/25/2020 2:26:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] NOT NULL,
	[TenTheLoai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[BANGDIA]  WITH CHECK ADD FOREIGN KEY([HANGSANXUAT])
REFERENCES [dbo].[HANGSANXUAT] ([MaHANGSANXUAT])
GO
ALTER TABLE [dbo].[BANGDIA]  WITH CHECK ADD FOREIGN KEY([ma_THELOAI_Bang_Dia])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [CHITIETHOADON_FK_BANGDIA] FOREIGN KEY([MABD])
REFERENCES [dbo].[BANGDIA] ([MABD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [CHITIETHOADON_FK_BANGDIA]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [CHITIETHOADON_FK_HOADON] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [CHITIETHOADON_FK_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [HOADON_FK_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [HOADON_FK_KHACHHANG]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [TAIKHOAN_FK_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [TAIKHOAN_FK_NHANVIEN]
GO
ALTER TABLE [dbo].[BANGDIA]  WITH CHECK ADD  CONSTRAINT [BANGDIA_CK_TINHTRANG] CHECK  (([TINHTRANG]=(1) OR [TINHTRANG]=(0)))
GO
ALTER TABLE [dbo].[BANGDIA] CHECK CONSTRAINT [BANGDIA_CK_TINHTRANG]
GO
