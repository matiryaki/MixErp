USE [master]
GO
/****** Object:  Database [MixErpDb]    Script Date: 26.11.2019 20:28:37 ******/
CREATE DATABASE [MixErpDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MixErpDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLERP12\MSSQL\DATA\MixErpDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MixErpDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLERP12\MSSQL\DATA\MixErpDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MixErpDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MixErpDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MixErpDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MixErpDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MixErpDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MixErpDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MixErpDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MixErpDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MixErpDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MixErpDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MixErpDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MixErpDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MixErpDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MixErpDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MixErpDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MixErpDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MixErpDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MixErpDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MixErpDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MixErpDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MixErpDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MixErpDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MixErpDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MixErpDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MixErpDb] SET RECOVERY FULL 
GO
ALTER DATABASE [MixErpDb] SET  MULTI_USER 
GO
ALTER DATABASE [MixErpDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MixErpDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MixErpDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MixErpDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MixErpDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MixErpDb] SET QUERY_STORE = OFF
GO
USE [MixErpDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [MixErpDb]
GO
/****** Object:  Table [dbo].[bBirim]    Script Date: 26.11.2019 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bBirim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BirimAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK__bBirim__3214EC07AFEB69F6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bKategori]    Script Date: 26.11.2019 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bKategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blgCariTipis]    Script Date: 26.11.2019 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blgCariTipis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CariTipi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blgDepartman]    Script Date: 26.11.2019 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blgDepartman](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_blgDepartman] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bMensei]    Script Date: 26.11.2019 20:28:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bMensei](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenseiAdi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bOdemeTurleri]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bOdemeTurleri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MuhasebeKodu] [nvarchar](10) NULL,
	[OdemeTipi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[ilce_no] [int] IDENTITY(1,1) NOT NULL,
	[isim] [varchar](50) NULL,
	[il_no] [int] NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[ilce_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[il_no] [int] NOT NULL,
	[isim] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[il_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCaris]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCaris](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CariNo] [nvarchar](50) NULL,
	[CariAdi] [nvarchar](250) NULL,
	[Adres] [nvarchar](max) NULL,
	[Tel] [nvarchar](20) NULL,
	[VergiD] [nvarchar](50) NULL,
	[VergiNoTc] [nvarchar](11) NULL,
	[CariTipId] [int] NULL,
	[SehirId] [int] NULL,
	[IlceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonel]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PersonelNo] [nvarchar](7) NULL,
	[Adi] [nvarchar](50) NULL,
	[Adres] [nvarchar](max) NULL,
	[Telefon] [nvarchar](20) NULL,
	[DepartmanId] [int] NULL,
	[IsBasTarih] [date] NULL,
	[IsSonTarih] [date] NULL,
	[DogumTarihi] [date] NULL,
	[Tcno] [nvarchar](11) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Personel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStokDurum]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStokDurum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StokKodu] [nvarchar](7) NULL,
	[Barkod] [nvarchar](200) NULL,
	[UrunId] [int] NULL,
	[Depo] [int] NULL,
	[Raf] [int] NULL,
	[Ambar] [int] NULL,
	[OBFiyat] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunAlis]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunAlis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlisGrupNo] [nvarchar](7) NULL,
	[CariId] [int] NULL,
	[ATarih] [date] NULL,
	[FaturaNo] [nvarchar](50) NULL,
	[Vade] [int] NULL,
	[OdemeId] [int] NULL,
	[UrunId] [int] NULL,
	[BFiyat] [decimal](7, 2) NULL,
	[Adet] [int] NULL,
	[BirimId] [int] NULL,
	[AraToplam] [decimal](7, 2) NULL,
	[KdvToplam] [decimal](7, 2) NULL,
	[GenelToplam] [decimal](7, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunAlisAlt]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunAlisAlt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlisGrupNo] [nvarchar](7) NULL,
	[UrunId] [int] NULL,
	[BFiyat] [decimal](9, 2) NULL,
	[Miktar] [int] NULL,
	[BirimId] [int] NULL,
	[AToplam] [decimal](9, 2) NULL,
	[Kdv] [decimal](9, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunAlisUst]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunAlisUst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AlisGrupNo] [nvarchar](7) NULL,
	[CariId] [int] NULL,
	[ATarih] [date] NULL,
	[FaturaNo] [nvarchar](50) NULL,
	[Vade] [int] NULL,
	[OdemeId] [int] NULL,
	[AraToplam] [decimal](9, 2) NULL,
	[KdvToplam] [decimal](9, 2) NULL,
	[GenelToplam] [decimal](9, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunler]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrunKodu] [nvarchar](50) NULL,
	[UrunAciklama] [nvarchar](max) NULL,
	[MenseiId] [int] NULL,
	[KategoriId] [int] NULL,
	[BirimId] [int] NULL,
	[CariId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunSatisAlt]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunSatisAlt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SatisGrupNo] [nvarchar](7) NULL,
	[UrunId] [int] NULL,
	[BFiyat] [decimal](9, 2) NULL,
	[KarOrani] [decimal](9, 2) NULL,
	[SFiyat] [decimal](9, 2) NULL,
	[Miktar] [int] NULL,
	[BirimId] [int] NULL,
	[AToplam] [decimal](9, 2) NULL,
	[Kdv] [decimal](9, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUrunSatisUst]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUrunSatisUst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SatisGrupNo] [nvarchar](7) NULL,
	[CariId] [int] NULL,
	[STarih] [date] NULL,
	[Vade] [int] NULL,
	[OdemeId] [int] NULL,
	[AraToplam] [decimal](9, 2) NULL,
	[KdvToplam] [decimal](9, 2) NULL,
	[GenelToplam] [decimal](9, 2) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 26.11.2019 20:28:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KulAdi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Role] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bBirim] ON 

INSERT [dbo].[bBirim] ([Id], [BirimAdi]) VALUES (1, N'Seçiniz   ')
INSERT [dbo].[bBirim] ([Id], [BirimAdi]) VALUES (2, N'lt        ')
INSERT [dbo].[bBirim] ([Id], [BirimAdi]) VALUES (3, N'cm        ')
INSERT [dbo].[bBirim] ([Id], [BirimAdi]) VALUES (4, N'kg        ')
SET IDENTITY_INSERT [dbo].[bBirim] OFF
SET IDENTITY_INSERT [dbo].[bKategori] ON 

INSERT [dbo].[bKategori] ([Id], [KategoriAdi]) VALUES (1, N'Belirtilmemiş')
INSERT [dbo].[bKategori] ([Id], [KategoriAdi]) VALUES (2, N'Telefon')
INSERT [dbo].[bKategori] ([Id], [KategoriAdi]) VALUES (3, N'Bilgisayar')
INSERT [dbo].[bKategori] ([Id], [KategoriAdi]) VALUES (4, N'Televizyon')
INSERT [dbo].[bKategori] ([Id], [KategoriAdi]) VALUES (5, N'Buzdolabı')
SET IDENTITY_INSERT [dbo].[bKategori] OFF
SET IDENTITY_INSERT [dbo].[blgCariTipis] ON 

INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (1, N'a')
INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (2, N'b')
INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (3, N'c')
INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (4, N'd')
INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (5, N'e')
INSERT [dbo].[blgCariTipis] ([Id], [CariTipi]) VALUES (6, N'f')
SET IDENTITY_INSERT [dbo].[blgCariTipis] OFF
SET IDENTITY_INSERT [dbo].[blgDepartman] ON 

INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (1, N'Belirtilmemiş')
INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (2, N'Bilgi İşlem')
INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (3, N'Çayhane')
INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (4, N'ARGE')
INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (5, N'Yönetim')
INSERT [dbo].[blgDepartman] ([Id], [DepartmanAdi]) VALUES (6, N'İnsan Kaynakları')
SET IDENTITY_INSERT [dbo].[blgDepartman] OFF
SET IDENTITY_INSERT [dbo].[bMensei] ON 

INSERT [dbo].[bMensei] ([Id], [MenseiAdi]) VALUES (1, N'Belirtilmemiş')
INSERT [dbo].[bMensei] ([Id], [MenseiAdi]) VALUES (2, N'a')
INSERT [dbo].[bMensei] ([Id], [MenseiAdi]) VALUES (3, N'b')
INSERT [dbo].[bMensei] ([Id], [MenseiAdi]) VALUES (4, N'c')
INSERT [dbo].[bMensei] ([Id], [MenseiAdi]) VALUES (5, N'd')
SET IDENTITY_INSERT [dbo].[bMensei] OFF
SET IDENTITY_INSERT [dbo].[bOdemeTurleri] ON 

INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (1, N'0', N'Belirtilmemiş')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (2, N'110', N'Kredi Kartı')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (3, N'111', N'Çekit')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (4, N'112', N'Senet')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (5, N'113', N'Nakit')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (6, N'114', N'Cennet Vade')
INSERT [dbo].[bOdemeTurleri] ([Id], [MuhasebeKodu], [OdemeTipi]) VALUES (7, N'115', N'Eft-Havale')
SET IDENTITY_INSERT [dbo].[bOdemeTurleri] OFF
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (1, N'SEYHAN', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (3, N'FEKE', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (4, N'KARAİSALI', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (5, N'KARATAŞ', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (6, N'KOZAN', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (7, N'POZANTI', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (8, N'SAİMBEYLİ', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (9, N'TUFANBEYLİ', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (10, N'YUMURTALIK', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (11, N'YÜREĞİR', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (12, N'ALADAĞ', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (13, N'İMAMOĞLU', 1)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (14, N'ADIYAMAN MERKEZ', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (15, N'BESNİ', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (16, N'ÇELİKHAN', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (17, N'GERGER', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (18, N'GÖLBAŞI', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (19, N'KAHTA', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (20, N'SAMSAT', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (21, N'SİNCİK', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (22, N'TUT', 2)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (23, N'AFYONMERKEZ', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (24, N'BOLVADİN', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (25, N'ÇAY', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (26, N'DAZKIRI', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (27, N'DİNAR', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (28, N'EMİRDAĞ', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (29, N'İHSANİYE', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (30, N'SANDIKLI', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (31, N'SİNANPAŞA', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (32, N'SULDANDAĞI', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (33, N'ŞUHUT', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (34, N'BAŞMAKÇI', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (35, N'BAYAT', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (36, N'İŞCEHİSAR', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (37, N'ÇOBANLAR', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (38, N'EVCİLER', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (39, N'HOCALAR', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (40, N'KIZILÖREN', 3)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (41, N'AKSARAY MERKEZ', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (42, N'ORTAKÖY', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (43, N'AĞAÇÖREN', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (44, N'GÜZELYURT', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (45, N'SARIYAHŞİ', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (46, N'ESKİL', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (47, N'GÜLAĞAÇ', 68)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (48, N'AMASYA MERKEZ', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (49, N'GÖYNÜÇEK', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (50, N'GÜMÜŞHACIKÖYÜ', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (51, N'MERZİFON', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (52, N'SULUOVA', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (53, N'TAŞOVA', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (54, N'HAMAMÖZÜ', 5)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (55, N'ALTINDAĞ', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (56, N'AYAS', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (57, N'BALA', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (58, N'BEYPAZARI', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (59, N'ÇAMLIDERE', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (60, N'ÇANKAYA', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (61, N'ÇUBUK', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (62, N'ELMADAĞ', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (63, N'GÜDÜL', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (64, N'HAYMANA', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (65, N'KALECİK', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (66, N'KIZILCAHAMAM', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (67, N'NALLIHAN', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (68, N'POLATLI', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (69, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (70, N'YENİMAHALLE', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (71, N'GÖLBAŞI', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (72, N'KEÇİÖREN', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (73, N'MAMAK', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (74, N'SİNCAN', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (75, N'KAZAN', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (76, N'AKYURT', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (77, N'ETİMESGUT', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (78, N'EVREN', 6)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (79, N'ANSEKİ', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (80, N'ALANYA', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (81, N'ANTALYA MERKEZİ', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (82, N'ELMALI', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (83, N'FİNİKE', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (84, N'GAZİPAŞA', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (85, N'GÜNDOĞMUŞ', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (86, N'KAŞ', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (87, N'KORKUTELİ', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (88, N'KUMLUCA', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (89, N'MANAVGAT', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (90, N'SERİK', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (91, N'DEMRE', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (92, N'İBRADI', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (93, N'KEMER', 7)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (94, N'ARDAHAN MERKEZ', 75)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (95, N'GÖLE', 75)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (96, N'ÇILDIR', 75)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (97, N'HANAK', 75)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (98, N'POSOF', 75)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (99, N'DAMAL', 75)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (100, N'ARDANUÇ', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (101, N'ARHAVİ', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (102, N'ARTVİN MERKEZ', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (103, N'BORÇKA', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (104, N'HOPA', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (105, N'ŞAVŞAT', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (106, N'YUSUFELİ', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (107, N'MURGUL', 8)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (108, N'AYDIN MERKEZ', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (109, N'BOZDOĞAN', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (110, N'ÇİNE', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (111, N'GERMENCİK', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (112, N'KARACASU', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (113, N'KOÇARLI', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (114, N'KUŞADASI', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (115, N'KUYUCAK', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (116, N'NAZİLLİ', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (117, N'SÖKE', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (118, N'SULTANHİSAR', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (119, N'YENİPAZAR', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (120, N'BUHARKENT', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (121, N'İNCİRLİOVA', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (122, N'KARPUZLU', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (123, N'KÖŞK', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (124, N'DİDİM', 9)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (125, N'AĞRI MERKEZ', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (126, N'DİYADİN', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (127, N'DOĞUBEYAZIT', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (128, N'ELEŞKİRT', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (129, N'HAMUR', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (130, N'PATNOS', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (131, N'TAŞLIÇAY', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (132, N'TUTAK', 4)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (133, N'AYVALIK', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (134, N'BALIKESİR MERKEZ', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (135, N'BALYA', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (136, N'BANDIRMA', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (137, N'BİGADİÇ', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (138, N'BURHANİYE', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (139, N'DURSUNBEY', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (140, N'EDREMİT', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (141, N'ERDEK', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (142, N'GÖNEN', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (143, N'HAVRAN', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (144, N'İVRİNDİ', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (145, N'KEPSUT', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (146, N'MANYAS', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (147, N'SAVAŞTEPE', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (148, N'SINDIRGI', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (149, N'SUSURLUK', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (150, N'MARMARA', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (152, N'BARTIN MERKEZ', 74)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (153, N'KURUCAŞİLE', 74)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (154, N'ULUS', 74)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (155, N'AMASRA', 74)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (156, N'BATMAN MERKEZ', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (157, N'BEŞİRİ', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (158, N'GERCÜŞ', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (159, N'KOZLUK', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (160, N'SASON', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (161, N'HASANKEYF', 72)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (162, N'BAYBURT MERKEZ', 69)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (163, N'AYDINTEPE', 69)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (164, N'DEMİRÖZÜ', 69)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (165, N'BOLU MERKEZ', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (166, N'GEREDE', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (167, N'GÖYNÜK', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (168, N'KIBRISCIK', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (169, N'MENGEN', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (170, N'MUDURNU', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (171, N'SEBEN', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (172, N'DÖRTDİVAN', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (173, N'YENİÇAĞA', 14)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (174, N'AĞLASUN', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (175, N'BUCAK', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (176, N'BURDUR MERKEZ', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (177, N'GÖLHİSAR', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (178, N'TEFENNİ', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (179, N'YEŞİLOVA', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (180, N'KARAMANLI', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (181, N'KEMER', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (182, N'ALTINYAYLA', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (183, N'ÇAVDIR', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (184, N'ÇELTİKÇİ', 15)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (185, N'GEMLİK', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (186, N'İNEGÖL', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (187, N'İZNİK', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (188, N'KARACABEY', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (189, N'KELES', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (190, N'MUDANYA', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (191, N'MUSTAFA K. PAŞA', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (192, N'ORHANELİ', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (193, N'ORHANGAZİ', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (194, N'YENİŞEHİR', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (195, N'BÜYÜK ORHAN', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (196, N'HARMANCIK', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (197, N'NÜLİFER', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (198, N'OSMAN GAZİ', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (199, N'YILDIRIM', 16)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (200, N'GÜRSU', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (201, N'KESTEL', 16)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (202, N'BİLECİK MERKEZ', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (203, N'BOZÜYÜK', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (204, N'GÖLPAZARI', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (205, N'OSMANELİ', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (206, N'PAZARYERİ', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (207, N'SÖĞÜT', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (208, N'YENİPAZAR', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (209, N'İNHİSAR', 11)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (210, N'BİNGÖL MERKEZ', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (211, N'GENÇ', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (212, N'KARLIOVA', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (213, N'KİGI', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (214, N'SOLHAN', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (215, N'ADAKLI', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (216, N'YAYLADERE', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (217, N'YEDİSU', 12)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (218, N'ADİLCEVAZ', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (219, N'AHLAT', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (220, N'BİTLİS MERKEZ', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (221, N'HİZAN', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (222, N'MUTKİ', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (223, N'TATVAN', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (224, N'GÜROYMAK', 13)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (225, N'DENİZLİ MERKEZ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (226, N'ACIPAYAM', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (227, N'BULDAN', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (228, N'ÇAL', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (229, N'ÇAMELİ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (230, N'ÇARDAK', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (231, N'ÇİVRİL', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (232, N'GÜNEY', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (233, N'KALE', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (234, N'SARAYKÖY', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (235, N'TAVAS', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (236, N'BABADAĞ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (237, N'BEKİLLİ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (238, N'HONAZ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (239, N'SERİNHİSAR', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (240, N'AKKÖY', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (241, N'BAKLAN', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (242, N'BEYAĞAÇ', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (243, N'BOZKURT', 20)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (244, N'DÜZCE MERKEZ', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (245, N'AKÇAKOCA', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (246, N'YIĞILCA', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (247, N'CUMAYERİ', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (248, N'GÖLYAKA', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (249, N'ÇİLİMLİ', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (250, N'GÜMÜŞOVA', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (251, N'KAYNAŞLI', 81)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (252, N'DİYARBAKIR MERKEZ', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (253, N'BİSMİL', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (254, N'ÇERMİK', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (255, N'ÇINAR', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (256, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (257, N'DİCLE', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (258, N'ERGANİ', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (259, N'HANİ', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (260, N'HAZRO', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (261, N'KULP', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (262, N'LİCE', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (263, N'SİLVAN', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (264, N'EĞİL', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (265, N'KOCAKÖY', 21)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (266, N'EDİRNE MERKEZ', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (267, N'ENEZ', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (268, N'HAVSA', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (269, N'İPSALA', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (270, N'KEŞAN', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (271, N'LALAPAŞA', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (272, N'MERİÇ', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (273, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (274, N'SÜLOĞLU', 22)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (275, N'ELAZIĞ MERKEZ', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (276, N'AĞIN', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (277, N'BASKİL', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (278, N'KARAKOÇAN', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (279, N'KEBAN', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (280, N'MADEN', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (281, N'PALU', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (282, N'SİVRİCE', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (283, N'ARICAK', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (284, N'KOVANCILAR', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (285, N'ALACAKAYA', 23)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (286, N'ERZURUM MERKEZ', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (287, N'PALANDÖKEN', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (288, N'AŞKALE', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (289, N'ÇAT', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (290, N'HINIS', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (291, N'HORASAN', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (292, N'OLTU', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (293, N'İSPİR', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (294, N'KARAYAZI', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (295, N'NARMAN', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (296, N'OLUR', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (297, N'PASİNLER', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (298, N'ŞENKAYA', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (299, N'TEKMAN', 25)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (300, N'TORTUM', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (301, N'KARAÇOBAN', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (302, N'UZUNDERE', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (303, N'PAZARYOLU', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (304, N'ILICA', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (305, N'KÖPRÜKÖY', 25)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (306, N'ÇAYIRLI', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (307, N'ERZİNCAN MERKEZ', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (308, N'İLİÇ', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (309, N'KEMAH', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (310, N'KEMALİYE', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (311, N'REFAHİYE', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (312, N'TERCAN', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (313, N'OTLUKBELİ', 24)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (314, N'ESKİŞEHİR MERKEZ', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (315, N'ÇİFTELER', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (316, N'MAHMUDİYE', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (317, N'MİHALIÇLIK', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (318, N'SARICAKAYA', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (319, N'SEYİTGAZİ', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (320, N'SİVRİHİSAR', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (321, N'ALPU', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (322, N'BEYLİKOVA', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (323, N'İNÖNÜ', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (324, N'GÜNYÜZÜ', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (325, N'HAN', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (326, N'MİHALGAZİ', 26)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (327, N'ARABAN', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (328, N'İSLAHİYE', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (329, N'NİZİP', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (330, N'OĞUZELİ', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (331, N'YAVUZELİ', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (332, N'ŞAHİNBEY', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (333, N'ŞEHİT KAMİL', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (334, N'KARKAMIŞ', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (335, N'NURDAĞI', 27)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (336, N'GÜMÜŞHANE MERKEZ', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (337, N'KELKİT', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (338, N'ŞİRAN', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (339, N'TORUL', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (340, N'KÖSE', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (341, N'KÜRTÜN', 29)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (342, N'ALUCRA', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (343, N'BULANCAK', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (344, N'DERELİ', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (345, N'ESPİYE', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (346, N'EYNESİL', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (347, N'GİRESUN MERKEZ', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (348, N'GÖRELE', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (349, N'KEŞAP', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (350, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (351, N'TİREBOLU', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (352, N'PİPAZİZ', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (353, N'YAĞLIDERE', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (354, N'ÇAMOLUK', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (355, N'ÇANAKÇI', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (356, N'DOĞANKENT', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (357, N'GÜCE', 28)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (358, N'HAKKARİ MERKEZ', 30)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (359, N'ÇUKURCA', 30)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (360, N'ŞEMDİNLİ', 30)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (361, N'YÜKSEKOVA', 30)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (362, N'ALTINÖZÜ', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (363, N'DÖRTYOL', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (364, N'HATAY MERKEZ', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (365, N'HASSA', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (366, N'İSKENDERUN', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (367, N'KIRIKHAN', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (368, N'REYHANLI', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (369, N'SAMANDAĞ', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (370, N'YAYLADAĞ', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (371, N'ERZİN', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (372, N'BELEN', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (373, N'KUMLU', 31)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (374, N'ISPARTA MERKEZ', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (375, N'ATABEY', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (376, N'KEÇİBORLU', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (377, N'EĞİRDİR', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (378, N'GELENDOST', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (379, N'SİNİRKENT', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (380, N'ULUBORLU', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (381, N'YALVAÇ', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (382, N'AKSU', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (383, N'GÖNEN', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (384, N'YENİŞAR BADEMLİ', 32)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (385, N'IĞDIR MERKEZ', 76)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (386, N'ARALIK', 76)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (387, N'TUZLUCA', 76)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (388, N'KARAKOYUNLU', 76)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (389, N'AFŞİN', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (390, N'ANDIRIN', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (391, N'ELBİSTAN', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (392, N'GÖKSUN', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (393, N'KAHRAMANMARAŞ MERKEZ', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (394, N'PAZARCIK', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (395, N'TÜRKOĞLU', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (396, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (397, N'EKİNÖZÜ', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (398, N'NURHAK', 46)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (399, N'EFLANİ', 78)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (400, N'ESKİPAZAR', 78)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (401, N'KARABÜK MERKEZ', 78)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (402, N'OVACIK', 78)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (403, N'SAFRANBOLU', 78)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (404, N'YENİCE', 78)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (405, N'ERMENEK', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (406, N'KARAMAN MERKEZ', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (407, N'AYRANCI', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (408, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (409, N'BAŞYAYLA', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (410, N'SARIVELİLER', 70)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (411, N'KARS MERKEZ', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (412, N'ARPAÇAY', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (413, N'DİGOR', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (414, N'KAĞIZMAN', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (415, N'SARIKAMIŞ', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (416, N'SELİM', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (417, N'SUSUZ', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (418, N'AKYAKA', 36)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (419, N'ABANA', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (420, N'KASTAMONU MERKEZ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (421, N'ARAÇ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (422, N'AZDAVAY', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (423, N'BOZKURT', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (424, N'CİDE', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (425, N'ÇATALZEYTİN', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (426, N'DADAY', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (427, N'DEVREKANİ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (428, N'İNEBOLU', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (429, N'KÜRE', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (430, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (431, N'TOSYA', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (432, N'İHSANGAZİ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (433, N'PINARBAŞI', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (434, N'ŞENPAZAR', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (435, N'AĞLI', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (436, N'DOĞANYURT', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (437, N'HANÖNÜ', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (438, N'SEYDİLER', 37)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (439, N'BÜNYAN', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (440, N'DEVELİ', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (441, N'FELAHİYE', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (442, N'İNCESU', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (443, N'PINARBAŞI', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (444, N'SARIOĞLAN', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (445, N'SARIZ', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (446, N'TOMARZA', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (447, N'YAHYALI', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (448, N'YEŞİLHİSAR', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (449, N'AKKIŞLA', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (450, N'TALAS', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (451, N'KOCASİNAN', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (452, N'MELİKGAZİ', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (453, N'HACILAR', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (454, N'ÖZVATAN', 38)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (455, N'DERİCE', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (456, N'KESKİN', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (457, N'KIRIKKALE MERKEZ', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (458, N'SALAK YURT', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (459, N'BAHŞİLİ', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (460, N'BALIŞEYH', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (461, N'ÇELEBİ', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (462, N'KARAKEÇİLİ', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (463, N'YAHŞİHAN', 71)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (464, N'KIRKKLARELİ MERKEZ', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (465, N'BABAESKİ', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (466, N'DEMİRKÖY', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (467, N'KOFÇAY', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (468, N'LÜLEBURGAZ', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (469, N'VİZE', 39)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (470, N'KIRŞEHİR MERKEZ', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (471, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (472, N'KAMAN', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (473, N'MUCUR', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (474, N'AKPINAR', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (475, N'AKÇAKENT', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (476, N'BOZTEPE', 40)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (477, N'KOCAELİ MERKEZ', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (478, N'GEBZE', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (479, N'GÖLCÜK', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (480, N'KANDIRA', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (481, N'KARAMÜRSEL', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (482, N'KÖRFEZ', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (483, N'DERİNCE', 41)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (484, N'KONYA MERKEZ', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (485, N'AKŞEHİR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (486, N'BEYŞEHİR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (487, N'BOZKIR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (488, N'CİHANBEYLİ', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (489, N'ÇUMRA', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (490, N'DOĞANHİSAR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (491, N'EREĞLİ', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (492, N'HADİM', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (493, N'ILGIN', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (494, N'KADINHANI', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (495, N'KARAPINAR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (496, N'KULU', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (497, N'SARAYÖNÜ', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (498, N'SEYDİŞEHİR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (499, N'YUNAK', 42)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (500, N'AKÖREN', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (501, N'ALTINEKİN', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (502, N'DEREBUCAK', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (503, N'HÜYÜK', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (504, N'KARATAY', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (505, N'MERAM', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (506, N'SELÇUKLU', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (507, N'TAŞKENT', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (508, N'AHIRLI', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (509, N'ÇELTİK', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (510, N'DERBENT', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (511, N'EMİRGAZİ', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (512, N'GÜNEYSINIR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (513, N'HALKAPINAR', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (514, N'TUZLUKÇU', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (515, N'YALIHÜYÜK', 42)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (516, N'KÜTAHYA  MERKEZ', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (517, N'ALTINTAŞ', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (518, N'DOMANİÇ', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (519, N'EMET', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (520, N'GEDİZ', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (521, N'SİMAV', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (522, N'TAVŞANLI', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (523, N'ASLANAPA', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (524, N'DUMLUPINAR', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (525, N'HİSARCIK', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (526, N'ŞAPHANE', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (527, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (528, N'PAZARLAR', 43)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (529, N'KİLİS MERKEZ', 79)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (530, N'ELBEYLİ', 79)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (531, N'MUSABEYLİ', 79)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (532, N'POLATELİ', 79)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (533, N'MALATYA MERKEZ', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (534, N'AKÇADAĞ', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (535, N'ARAPGİR', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (536, N'ARGUVAN', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (537, N'DARENDE', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (538, N'DOĞANŞEHİR', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (539, N'HEKİMHAN', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (540, N'PÜTÜRGE', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (541, N'YEŞİLYURT', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (542, N'BATTALGAZİ', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (543, N'DOĞANYOL', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (544, N'KALE', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (545, N'KULUNCAK', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (546, N'YAZIHAN', 44)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (547, N'AKHİSAR', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (548, N'ALAŞEHİR', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (549, N'DEMİRCİ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (550, N'GÖRDES', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (551, N'KIRKAĞAÇ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (552, N'KULA', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (553, N'MANİSA MERKEZ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (554, N'SALİHLİ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (555, N'SARIGÖL', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (556, N'SARUHANLI', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (557, N'SELENDİ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (558, N'SOMA', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (559, N'TURGUTLU', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (560, N'AHMETLİ', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (561, N'GÖLMARMARA', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (562, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (563, N'DERİK', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (564, N'KIZILTEPE', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (565, N'MARDİN MERKEZ', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (566, N'MAZIDAĞI', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (567, N'MİDYAT', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (568, N'NUSAYBİN', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (569, N'ÖMERLİ', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (570, N'SAVUR', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (571, N'YEŞİLLİ', 47)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (572, N'MERSİN MERKEZ', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (573, N'ANAMUR', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (574, N'ERDEMLİ', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (575, N'GÜLNAR', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (576, N'MUT', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (577, N'SİLİFKE', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (578, N'TARSUS', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (579, N'AYDINCIK', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (580, N'BOZYAZI', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (581, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (582, N'BODRUM', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (583, N'DATÇA', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (584, N'FETHİYE', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (585, N'KÖYCEĞİZ', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (586, N'MARMARİS', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (587, N'MİLAS', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (588, N'MUĞLA MERKEZ', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (589, N'ULA', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (590, N'YATAĞAN', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (591, N'DALAMAN', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (592, N'KAVAKLI DERE', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (593, N'ORTACA', 48)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (594, N'BULANIK', 49)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (595, N'MALAZGİRT', 49)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (596, N'MUŞ MERKEZ', 49)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (597, N'VARTO', 49)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (598, N'HASKÖY', 49)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (599, N'KORKUT', 49)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (600, N'NEVŞEHİR MERKEZ', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (601, N'AVANOS', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (602, N'DERİNKUYU', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (603, N'GÜLŞEHİR', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (604, N'HACIBEKTAŞ', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (605, N'KOZAKLI', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (606, N'ÜRGÜP', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (607, N'ACIGÖL', 50)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (608, N'NİĞDE MERKEZ', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (609, N'BOR', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (610, N'ÇAMARDI', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (611, N'ULUKIŞLA', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (612, N'ALTUNHİSAR', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (613, N'ÇİFTLİK', 51)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (614, N'AKKUŞ', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (615, N'AYBASTI', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (616, N'FATSA', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (617, N'GÖLKÖY', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (618, N'KORGAN', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (619, N'KUMRU', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (620, N'MESUDİYE', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (621, N'ORDU MERKEZ', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (622, N'PERŞEMBE', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (623, N'ULUBEY', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (624, N'ÜNYE', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (625, N'GÜLYALI', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (626, N'GÜRGENTEPE', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (627, N'ÇAMAŞ', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (628, N'ÇATALPINAR', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (629, N'ÇAYBAŞI', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (630, N'İKİZCE', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (631, N'KABADÜZ', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (632, N'KABATAŞ', 52)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (633, N'BAHÇE', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (634, N'KADİRLİ', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (635, N'OSMANİYE MERKEZ', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (636, N'DÜZİÇİ', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (637, N'HASANBEYLİ', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (638, N'SUMBAŞ', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (639, N'TOPRAKKALE', 80)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (640, N'RİZE MERKEZ', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (641, N'ARDEŞEN', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (642, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (643, N'ÇAYELİ', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (644, N'FINDIKLI', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (645, N'İKİZDERE', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (646, N'KALKANDERE', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (647, N'PAZAR', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (648, N'GÜNEYSU', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (649, N'DEREPAZARI', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (650, N'HEMŞİN', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (651, N'İYİDERE', 53)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (652, N'AKYAZI', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (653, N'GEYVE', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (654, N'HENDEK', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (655, N'KARASU', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (656, N'KAYNARCA', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (657, N'SAKARYA MERKEZ', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (658, N'PAMUKOVA', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (659, N'TARAKLI', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (660, N'FERİZLİ', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (661, N'KARAPÜRÇEK', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (662, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (663, N'ALAÇAM', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (664, N'BAFRA', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (665, N'ÇARŞAMBA', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (666, N'HAVZA', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (667, N'KAVAK', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (668, N'LADİK', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (669, N'SAMSUN MERKEZ', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (670, N'TERME', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (671, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (672, N'ASARCIK', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (673, N'ONDOKUZMAYIS', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (674, N'SALIPAZARI', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (675, N'TEKKEKÖY', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (676, N'AYVACIK', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (677, N'YAKAKENT', 55)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (678, N'AYANCIK', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (679, N'BOYABAT', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (680, N'SİNOP MERKEZ', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (681, N'DURAĞAN', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (682, N'ERGELEK', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (683, N'GERZE', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (684, N'TÜRKELİ', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (685, N'DİKMEN', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (686, N'SARAYDÜZÜ', 57)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (687, N'DİVRİĞİ', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (688, N'GEMEREK', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (689, N'GÜRÜN', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (690, N'HAFİK', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (691, N'İMRANLI', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (692, N'KANGAL', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (693, N'KOYUL HİSAR', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (694, N'SİVAS MERKEZ', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (695, N'SU ŞEHRİ', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (696, N'ŞARKIŞLA', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (697, N'YILDIZELİ', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (698, N'ZARA', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (699, N'AKINCILAR', 58)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (700, N'ALTINYAYLA', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (701, N'DOĞANŞAR', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (702, N'GÜLOVA', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (703, N'ULAŞ', 58)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (704, N'BAYKAN', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (705, N'ERUH', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (706, N'KURTALAN', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (707, N'PERVARİ', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (708, N'SİİRT MERKEZ', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (709, N'ŞİRVARİ', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (710, N'AYDINLAR', 56)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (711, N'TEKİRDAĞ MERKEZ', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (712, N'ÇERKEZKÖY', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (713, N'ÇORLU', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (714, N'HAYRABOLU', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (715, N'MALKARA', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (716, N'MURATLI', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (717, N'SARAY', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (718, N'ŞARKÖY', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (719, N'MARAMARAEREĞLİSİ', 59)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (720, N'ALMUS', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (721, N'ARTOVA', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (722, N'TOKAT MERKEZ', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (723, N'ERBAA', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (724, N'NİKSAR', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (725, N'REŞADİYE', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (726, N'TURHAL', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (727, N'ZİLE', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (728, N'PAZAR', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (729, N'YEŞİLYURT', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (730, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (731, N'SULUSARAY', 60)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (732, N'TRABZON MERKEZ', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (733, N'AKÇAABAT', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (734, N'ARAKLI', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (735, N'ARŞİN', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (736, N'ÇAYKARA', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (737, N'MAÇKA', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (738, N'OF', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (739, N'SÜRMENE', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (740, N'TONYA', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (741, N'VAKFIKEBİR', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (742, N'YOMRA', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (743, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (744, N'ŞALPAZARI', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (745, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (746, N'DERNEKPAZARI', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (747, N'DÜZKÖY', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (748, N'HAYRAT', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (749, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (750, N'TUNCELİ MERKEZ', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (751, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (752, N'HOZAT', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (753, N'MAZGİRT', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (754, N'NAZİMİYE', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (755, N'OVACIK', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (756, N'PERTEK', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (757, N'PÜLÜMÜR', 62)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (758, N'BANAZ', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (759, N'EŞME', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (760, N'KARAHALLI', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (761, N'SİVASLI', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (762, N'ULUBEY', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (763, N'UŞAK MERKEZ', 64)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (764, N'BAŞKALE', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (765, N'VAN MERKEZ', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (766, N'EDREMİT', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (767, N'ÇATAK', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (768, N'ERCİŞ', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (769, N'GEVAŞ', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (770, N'GÜRPINAR', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (771, N'MURADİYE', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (772, N'ÖZALP', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (773, N'BAHÇESARAY', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (774, N'ÇALDIRAN', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (775, N'SARAY', 65)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (776, N'YALOVA MERKEZ', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (777, N'ALTINOVA', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (778, N'ARMUTLU', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (779, N'ÇINARCIK', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (780, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (781, N'TERMAL', 77)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (782, N'AKDAĞMADENİ', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (783, N'BOĞAZLIYAN', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (784, N'YOZGAT MERKEZ', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (785, N'ÇAYIRALAN', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (786, N'ÇEKEREK', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (787, N'SARIKAYA', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (788, N'SORGUN', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (789, N'ŞEFAATLI', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (790, N'YERKÖY', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (791, N'KADIŞEHRİ', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (792, N'SARAYKENT', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (793, N'YENİFAKILI', 66)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (794, N'ÇAYCUMA', 67)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (795, N'DEVREK', 67)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (796, N'ZONGULDAK MERKEZ', 67)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (797, N'EREĞLİ', 67)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (798, N'ALAPLI', 67)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (799, N'GÖKÇEBEY', 67)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (800, N'ÇANAKKALE MERKEZ', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (801, N'AYVACIK', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (802, N'BAYRAMİÇ', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (803, N'BİGA', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (804, N'BOZCAADA', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (805, N'ÇAN', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (806, N'ECEABAT', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (807, N'EZİNE', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (808, N'LAPSEKİ', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (809, N'YENİCE', 17)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (810, N'ÇANKIRI MERKEZ', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (811, N'ÇERKEŞ', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (812, N'ELDİVAN', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (813, N'ILGAZ', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (814, N'KURŞUNLU', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (815, N'ORTA', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (816, N'ŞABANÖZÜ', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (817, N'YAPRAKLI', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (818, N'ATKARACALAR', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (819, N'KIZILIRMAK', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (820, N'BAYRAMÖREN', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (821, N'KORGUN', 18)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (822, N'ALACA', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (823, N'BAYAT', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (824, N'ÇORUM MERKEZ', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (825, N'İKSİPLİ', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (826, N'KARGI', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (827, N'MECİTÖZÜ', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (828, N'ORTAKÖY', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (829, N'OSMANCIK', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (830, N'SUNGURLU', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (831, N'DODURGA', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (832, N'LAÇİN', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (833, N'OĞUZLAR', 19)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (834, N'ADALAR', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (835, N'BAKIRKÖY', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (836, N'BEŞİKTAŞ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (837, N'BEYKOZ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (838, N'BEYOĞLU', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (839, N'ÇATALCA', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (840, N'EMİNÖNÜ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (841, N'EYÜP', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (842, N'FATİH', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (843, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (844, N'KADIKÖY', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (845, N'KARTAL', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (846, N'SARIYER', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (847, N'SİLİVRİ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (848, N'ŞİLE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (849, N'ŞİŞLİ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (850, N'ÜSKÜDAR', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (851, N'ZEYTİNBURNU', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (852, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (853, N'KAĞITHANE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (854, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (855, N'PENDİK', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (856, N'ÜMRANİYE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (857, N'BAYRAMPAŞA', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (858, N'AVCILAR', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (859, N'BAĞCILAR', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (860, N'BAHÇELİEVLER', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (861, N'GÜNGÖREN', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (862, N'MALTEPE', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (863, N'SULTANBEYLİ', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (864, N'TUZLA', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (865, N'ESENLER', 34)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (866, N'ALİAĞA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (867, N'BAYINDIR', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (868, N'BERGAMA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (869, N'BORNOVA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (870, N'ÇEŞME', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (871, N'DİKİLİ', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (872, N'FOÇA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (873, N'KARABURUN', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (874, N'KARŞIYAKA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (875, N'KEMALPAŞA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (876, N'KINIK', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (877, N'KİRAZ', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (878, N'MENEMEN', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (879, N'ÖDEMİŞ', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (880, N'SEFERİHİSAR', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (881, N'SELÇUK', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (882, N'TİRE', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (883, N'TORBALI', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (884, N'URLA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (885, N'BEYDAĞ', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (886, N'BUCA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (887, N'KONAK', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (888, N'MENDERES', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (889, N'BALÇOVA', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (890, N'ÇİGLİ', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (891, N'GAZİEMİR', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (892, N'NARLIDERE', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (893, N'GÜZELBAHÇE', 35)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (894, N'ŞANLIURFA MERKEZ', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (895, N'AKÇAKALE', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (896, N'BİRECİK', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (897, N'BOZOVA', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (898, N'CEYLANPINAR', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (899, N'HALFETİ', 63)
GO
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (900, N'HİLVAN', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (901, N'SİVEREK', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (902, N'SURUÇ', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (903, N'VİRANŞEHİR', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (904, N'HARRAN', 63)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (905, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (906, N'ŞIRNAK MERKEZ', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (907, N'CİZRE', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (908, N'İDİL', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (909, N'SİLOPİ', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (910, N'ULUDERE', 73)
INSERT [dbo].[ilceler] ([ilce_no], [isim], [il_no]) VALUES (911, N'GÜÇLÜKONAK', 73)
SET IDENTITY_INSERT [dbo].[ilceler] OFF
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (1, N'ADANA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (3, N'AFYON')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (4, N'AĞRI')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (5, N'AMASYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (6, N'ANKARA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (7, N'ANTALYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (8, N'ARTVİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (9, N'AYDIN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (11, N'BİLECİK')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (13, N'BİTLİS')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (14, N'BOLU')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (15, N'BURDUR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (16, N'BURSA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (19, N'ÇORUM')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (22, N'EDİRNE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (25, N'ERZURUM')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (28, N'GİRESUN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (31, N'HATAY')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (32, N'ISPARTA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (33, N'İÇEL')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (35, N'İZMİR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (36, N'KARS')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (42, N'KONYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (44, N'MALATYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (45, N'MANİSA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (47, N'MARDİN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (48, N'MUĞLA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (49, N'MUŞ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (51, N'NİĞDE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (52, N'ORDU')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (53, N'RİZE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (54, N'SAKARYA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (55, N'SAMSUN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (56, N'SİİRT')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (57, N'SİNOP')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (58, N'SİVAS')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (60, N'TOKAT')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (61, N'TRABZON')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (64, N'UŞAK')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (65, N'VAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (66, N'YOZGAT')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (68, N'AKSARAY')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (69, N'BAYBURT')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (70, N'KARAMAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (72, N'BATMAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (74, N'BARTI')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (76, N'IĞDIR')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (77, N'YALOVA')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (78, N'KARABÜK')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (79, N'KİLİS')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[iller] ([il_no], [isim]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[tblCaris] ON 

INSERT [dbo].[tblCaris] ([Id], [CariNo], [CariAdi], [Adres], [Tel], [VergiD], [VergiNoTc], [CariTipId], [SehirId], [IlceId]) VALUES (5, N'0000001', N'as', N'asd', N'123', N'asd', N'123', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tblCaris] OFF
SET IDENTITY_INSERT [dbo].[tblPersonel] ON 

INSERT [dbo].[tblPersonel] ([Id], [PersonelNo], [Adi], [Adres], [Telefon], [DepartmanId], [IsBasTarih], [IsSonTarih], [DogumTarihi], [Tcno], [Email]) VALUES (1, N'0000001', N'Deneme', N'sadadsadasda', N'3123123', 3, CAST(N'2019-11-07' AS Date), CAST(N'2019-11-07' AS Date), CAST(N'2019-11-07' AS Date), N'12345678', N'asdsa')
INSERT [dbo].[tblPersonel] ([Id], [PersonelNo], [Adi], [Adres], [Telefon], [DepartmanId], [IsBasTarih], [IsSonTarih], [DogumTarihi], [Tcno], [Email]) VALUES (2, N'0000002', N'Melike', N'sdasdasdas', N'1244324', 4, CAST(N'2019-11-07' AS Date), CAST(N'2019-11-07' AS Date), CAST(N'2019-11-20' AS Date), N'31232132', N'sdfsfsa')
INSERT [dbo].[tblPersonel] ([Id], [PersonelNo], [Adi], [Adres], [Telefon], [DepartmanId], [IsBasTarih], [IsSonTarih], [DogumTarihi], [Tcno], [Email]) VALUES (3, N'0000003', N'', N'', N'', 1, CAST(N'2019-11-07' AS Date), CAST(N'2019-11-07' AS Date), CAST(N'2019-11-07' AS Date), N'', N'')
SET IDENTITY_INSERT [dbo].[tblPersonel] OFF
SET IDENTITY_INSERT [dbo].[tblStokDurum] ON 

INSERT [dbo].[tblStokDurum] ([Id], [StokKodu], [Barkod], [UrunId], [Depo], [Raf], [Ambar], [OBFiyat]) VALUES (6, N'0000001', N'Dnm001/Deneme', 7, 15, 15, 0, CAST(113.33 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[tblStokDurum] OFF
SET IDENTITY_INSERT [dbo].[tblUrunAlisAlt] ON 

INSERT [dbo].[tblUrunAlisAlt] ([Id], [AlisGrupNo], [UrunId], [BFiyat], [Miktar], [BirimId], [AToplam], [Kdv]) VALUES (23, N'0000001', 7, CAST(100.00 AS Decimal(9, 2)), 5, 4, CAST(500.00 AS Decimal(9, 2)), CAST(90.00 AS Decimal(9, 2)))
INSERT [dbo].[tblUrunAlisAlt] ([Id], [AlisGrupNo], [UrunId], [BFiyat], [Miktar], [BirimId], [AToplam], [Kdv]) VALUES (24, N'0000002', 7, CAST(120.00 AS Decimal(9, 2)), 10, 4, CAST(1200.00 AS Decimal(9, 2)), CAST(216.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[tblUrunAlisAlt] OFF
SET IDENTITY_INSERT [dbo].[tblUrunAlisUst] ON 

INSERT [dbo].[tblUrunAlisUst] ([Id], [AlisGrupNo], [CariId], [ATarih], [FaturaNo], [Vade], [OdemeId], [AraToplam], [KdvToplam], [GenelToplam]) VALUES (7, N'0000001', 5, CAST(N'2019-11-26' AS Date), N'3213213', 4, 3, CAST(500.00 AS Decimal(9, 2)), CAST(90.00 AS Decimal(9, 2)), NULL)
INSERT [dbo].[tblUrunAlisUst] ([Id], [AlisGrupNo], [CariId], [ATarih], [FaturaNo], [Vade], [OdemeId], [AraToplam], [KdvToplam], [GenelToplam]) VALUES (8, N'0000002', 5, CAST(N'2019-11-26' AS Date), N'1231231', 4, 2, CAST(1200.00 AS Decimal(9, 2)), CAST(216.00 AS Decimal(9, 2)), NULL)
SET IDENTITY_INSERT [dbo].[tblUrunAlisUst] OFF
SET IDENTITY_INSERT [dbo].[tblUrunler] ON 

INSERT [dbo].[tblUrunler] ([Id], [UrunKodu], [UrunAciklama], [MenseiId], [KategoriId], [BirimId], [CariId]) VALUES (7, N'Dnm001', N'Deneme', 3, 3, 4, 5)
SET IDENTITY_INSERT [dbo].[tblUrunler] OFF
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([Id], [KulAdi], [Sifre], [Role]) VALUES (1, N'Melike', N'12345', 1)
INSERT [dbo].[tblUsers] ([Id], [KulAdi], [Sifre], [Role]) VALUES (2, N'aaa', N'aaa', 3)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [fk_il_no] FOREIGN KEY([il_no])
REFERENCES [dbo].[iller] ([il_no])
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [fk_il_no]
GO
ALTER TABLE [dbo].[tblCaris]  WITH CHECK ADD  CONSTRAINT [FK_tblCaris_blgCariTipis] FOREIGN KEY([CariTipId])
REFERENCES [dbo].[blgCariTipis] ([Id])
GO
ALTER TABLE [dbo].[tblCaris] CHECK CONSTRAINT [FK_tblCaris_blgCariTipis]
GO
ALTER TABLE [dbo].[tblCaris]  WITH CHECK ADD  CONSTRAINT [FK_tblCaris_Iller] FOREIGN KEY([SehirId])
REFERENCES [dbo].[iller] ([il_no])
GO
ALTER TABLE [dbo].[tblCaris] CHECK CONSTRAINT [FK_tblCaris_Iller]
GO
ALTER TABLE [dbo].[tblCaris]  WITH CHECK ADD  CONSTRAINT [FK_tblCaris_ilceler] FOREIGN KEY([IlceId])
REFERENCES [dbo].[ilceler] ([ilce_no])
GO
ALTER TABLE [dbo].[tblCaris] CHECK CONSTRAINT [FK_tblCaris_ilceler]
GO
ALTER TABLE [dbo].[tblPersonel]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonel_blgDepartman] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[blgDepartman] ([Id])
GO
ALTER TABLE [dbo].[tblPersonel] CHECK CONSTRAINT [FK_tblPersonel_blgDepartman]
GO
ALTER TABLE [dbo].[tblStokDurum]  WITH CHECK ADD  CONSTRAINT [FK_tblStokDurum_tblUrunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblUrunler] ([Id])
GO
ALTER TABLE [dbo].[tblStokDurum] CHECK CONSTRAINT [FK_tblStokDurum_tblUrunler]
GO
ALTER TABLE [dbo].[tblUrunAlis]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlis_bOdemeTurleri] FOREIGN KEY([OdemeId])
REFERENCES [dbo].[bOdemeTurleri] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlis] CHECK CONSTRAINT [FK_tblUrunAlis_bOdemeTurleri]
GO
ALTER TABLE [dbo].[tblUrunAlis]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlis_tblCaris] FOREIGN KEY([CariId])
REFERENCES [dbo].[tblCaris] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlis] CHECK CONSTRAINT [FK_tblUrunAlis_tblCaris]
GO
ALTER TABLE [dbo].[tblUrunAlis]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlis_tblUrunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblUrunler] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlis] CHECK CONSTRAINT [FK_tblUrunAlis_tblUrunler]
GO
ALTER TABLE [dbo].[tblUrunAlisAlt]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlisAlt_bBirim] FOREIGN KEY([BirimId])
REFERENCES [dbo].[bBirim] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlisAlt] CHECK CONSTRAINT [FK_tblUrunAlisAlt_bBirim]
GO
ALTER TABLE [dbo].[tblUrunAlisAlt]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlisAlt_tblUrunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblUrunler] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlisAlt] CHECK CONSTRAINT [FK_tblUrunAlisAlt_tblUrunler]
GO
ALTER TABLE [dbo].[tblUrunAlisUst]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlisUst_bOdemeTurleri] FOREIGN KEY([OdemeId])
REFERENCES [dbo].[bOdemeTurleri] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlisUst] CHECK CONSTRAINT [FK_tblUrunAlisUst_bOdemeTurleri]
GO
ALTER TABLE [dbo].[tblUrunAlisUst]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunAlisUst_tblCaris] FOREIGN KEY([CariId])
REFERENCES [dbo].[tblCaris] ([Id])
GO
ALTER TABLE [dbo].[tblUrunAlisUst] CHECK CONSTRAINT [FK_tblUrunAlisUst_tblCaris]
GO
ALTER TABLE [dbo].[tblUrunler]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunler_bBirim] FOREIGN KEY([BirimId])
REFERENCES [dbo].[bBirim] ([Id])
GO
ALTER TABLE [dbo].[tblUrunler] CHECK CONSTRAINT [FK_tblUrunler_bBirim]
GO
ALTER TABLE [dbo].[tblUrunler]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunler_bKategori] FOREIGN KEY([MenseiId])
REFERENCES [dbo].[bMensei] ([Id])
GO
ALTER TABLE [dbo].[tblUrunler] CHECK CONSTRAINT [FK_tblUrunler_bKategori]
GO
ALTER TABLE [dbo].[tblUrunler]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunler_bMensei] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[bKategori] ([Id])
GO
ALTER TABLE [dbo].[tblUrunler] CHECK CONSTRAINT [FK_tblUrunler_bMensei]
GO
ALTER TABLE [dbo].[tblUrunler]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunler_tblCaris] FOREIGN KEY([CariId])
REFERENCES [dbo].[tblCaris] ([Id])
GO
ALTER TABLE [dbo].[tblUrunler] CHECK CONSTRAINT [FK_tblUrunler_tblCaris]
GO
ALTER TABLE [dbo].[tblUrunSatisAlt]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunSatisAlt_bBirim] FOREIGN KEY([BirimId])
REFERENCES [dbo].[bBirim] ([Id])
GO
ALTER TABLE [dbo].[tblUrunSatisAlt] CHECK CONSTRAINT [FK_tblUrunSatisAlt_bBirim]
GO
ALTER TABLE [dbo].[tblUrunSatisAlt]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunSatisAlt_tblUrunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[tblUrunler] ([Id])
GO
ALTER TABLE [dbo].[tblUrunSatisAlt] CHECK CONSTRAINT [FK_tblUrunSatisAlt_tblUrunler]
GO
ALTER TABLE [dbo].[tblUrunSatisUst]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunSatisUst_bOdemeTurleri] FOREIGN KEY([OdemeId])
REFERENCES [dbo].[bOdemeTurleri] ([Id])
GO
ALTER TABLE [dbo].[tblUrunSatisUst] CHECK CONSTRAINT [FK_tblUrunSatisUst_bOdemeTurleri]
GO
ALTER TABLE [dbo].[tblUrunSatisUst]  WITH CHECK ADD  CONSTRAINT [FK_tblUrunSatisUst_tblCaris] FOREIGN KEY([CariId])
REFERENCES [dbo].[tblCaris] ([Id])
GO
ALTER TABLE [dbo].[tblUrunSatisUst] CHECK CONSTRAINT [FK_tblUrunSatisUst_tblCaris]
GO
USE [master]
GO
ALTER DATABASE [MixErpDb] SET  READ_WRITE 
GO
