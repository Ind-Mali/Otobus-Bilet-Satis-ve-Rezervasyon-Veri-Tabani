USE [Otobus_Bilet]
GO
/****** Object:  Table [dbo].[Biletler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Biletler](
	[Bilet_ID] [int] IDENTITY(1,1) NOT NULL,
	[SatısMıRezervasyonMu] [nvarchar](50) NOT NULL,
	[KoltukNo] [int] NOT NULL,
	[YolcuCinsiyet] [nvarchar](50) NOT NULL,
	[Yolcu_Adı] [nvarchar](50) NOT NULL,
	[Yolcu_Soyad] [nvarchar](50) NOT NULL,
	[Ucret] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Musteri_ID] [int] NOT NULL,
 CONSTRAINT [PK_Biletler] PRIMARY KEY CLUSTERED 
(
	[Bilet_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Firmalar]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firmalar](
	[Firma_ID] [int] IDENTITY(1,1) NOT NULL,
	[Firma_Adı] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[Firma_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyadı] [nvarchar](50) NOT NULL,
	[Cinsiyet] [nvarchar](50) NOT NULL,
	[DogumTarihi] [date] NOT NULL,
	[Telefon] [nvarchar](50) NOT NULL,
	[Adres] [nvarchar](50) NULL,
	[Otobus_ID] [int] NOT NULL,
	[Servis_ID] [int] NULL,
	[Sehir_ID] [int] NOT NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Otobusler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otobusler](
	[Otobus_ID] [int] IDENTITY(1,1) NOT NULL,
	[Koltuk_Sayısı] [int] NOT NULL,
	[Plaka] [nvarchar](50) NOT NULL,
	[Sefer_ID] [int] NOT NULL,
	[Firma_ID] [int] NOT NULL,
 CONSTRAINT [PK_Otobusler] PRIMARY KEY CLUSTERED 
(
	[Otobus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seferler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seferler](
	[Sefer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kalkıs_Saati] [time](7) NOT NULL,
	[Kalkıs_Yeri] [nvarchar](50) NOT NULL,
	[Varıs_Saati] [time](7) NOT NULL,
	[Varıs_Yeri] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seferler] PRIMARY KEY CLUSTERED 
(
	[Sefer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sehirler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehirler](
	[Sehir_ID] [int] IDENTITY(1,1) NOT NULL,
	[sehir_adı] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sehirler] PRIMARY KEY CLUSTERED 
(
	[Sehir_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Servisler]    Script Date: 30.04.2020 05:48:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servisler](
	[Servis_ID] [int] IDENTITY(1,1) NOT NULL,
	[Servis_Kalkıs_Saati] [time](7) NOT NULL,
	[Servis_Kalkıs_Yeri] [nvarchar](50) NOT NULL,
	[Servis_Varıs_Yeri] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Servisler] PRIMARY KEY CLUSTERED 
(
	[Servis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Biletler] ON 

GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (1, N'Satış', 1, N'Erkek', N'Bora', N'Taşkın', 150, CAST(0x91400B00 AS Date), 1)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (2, N'Satış', 2, N'Erkek', N'Oktay', N'Arabacı', 100, CAST(0x91400B00 AS Date), 2)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (3, N'Rezervasyon', 4, N'Kadın', N'Hatice', N'Balgıc', 150, CAST(0x91400B00 AS Date), 3)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (4, N'Satış', 2, N'Erkek', N'Kuzey', N'Tekinoğlu', 125, CAST(0xAD400B00 AS Date), 4)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (6, N'Satış', 6, N'Erkek', N'Mesut', N'Yılmaz', 55, CAST(0xC2400B00 AS Date), 5)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (7, N'Rezervasyon', 5, N'Erkek', N'Süleyman', N'Demirel', 75, CAST(0xB8400B00 AS Date), 6)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (8, N'Rezervasyon', 7, N'Kadın', N'Tansu', N'Çiller', 130, CAST(0xC2400B00 AS Date), 7)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (9, N'Satış', 12, N'Erkek', N'Güney', N'Tekinoğlu', 115, CAST(0xC2400B00 AS Date), 8)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (10, N'Rezervasyon', 15, N'Erkek', N'Behlül', N'Ziyagil', 45, CAST(0xC2400B00 AS Date), 9)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (11, N'Satış', 2, N'Kadın', N'Bihter', N'Ziyagil', 36, CAST(0xF4400B00 AS Date), 10)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (12, N'Rezervasyon', 2, N'Erkek', N'Burak', N'Özçivit', 85, CAST(0xF9400B00 AS Date), 11)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (13, N'Satış', 3, N'Erkek', N'Ramiz', N'Karaeski', 154, CAST(0xF9400B00 AS Date), 12)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (14, N'Rezervasyon', 25, N'Kadın', N'Serenay', N'Sarıkaya', 98, CAST(0x0D410B00 AS Date), 13)
GO
INSERT [dbo].[Biletler] ([Bilet_ID], [SatısMıRezervasyonMu], [KoltukNo], [YolcuCinsiyet], [Yolcu_Adı], [Yolcu_Soyad], [Ucret], [Tarih], [Musteri_ID]) VALUES (15, N'Satış', 25, N'Kadın', N'Suat', N'Çoban', 37, CAST(0x17410B00 AS Date), 14)
GO
SET IDENTITY_INSERT [dbo].[Biletler] OFF
GO
SET IDENTITY_INSERT [dbo].[Firmalar] ON 

GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (1, N'Metro')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (2, N'Nilüfer')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (3, N'Anadolu')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (4, N'Buzlu')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (5, N'Efetur')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (6, N'Pamukkale')
GO
INSERT [dbo].[Firmalar] ([Firma_ID], [Firma_Adı]) VALUES (7, N'Öz Diyarbakır')
GO
SET IDENTITY_INSERT [dbo].[Firmalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (1, N'Bora', N'Taşkın', N'Erkek', CAST(0x6F170B00 AS Date), N'05300704965', N'Üni. Cad. Kemalpaşa Mah. D Blok Daire 60 No 22', 2, 1, 1)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (2, N'Oktay', N'Arabacı', N'Erkek', CAST(0x38200B00 AS Date), N'05304567477', N'Atatürk Cad. Iramk Mah. C Blok Daire 6 No 21', 3, 2, 3)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (3, N'Hatice', N'Balgıc', N'Kadın', CAST(0x38230B00 AS Date), N'05300704966', N'Kazım Cad. Atıf Mah. Daire 60 No 44', 2, 1, 1)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (4, N'Kuzey', N'Tekinoğlu', N'Erkek', CAST(0x3D200B00 AS Date), N'05300704967', N'Eski Cad. Yeni Mah. A Blok Daire 61 No 22', 4, 1, 3)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (5, N'Mesut', N'Yılmaz', N'Erkek', CAST(0x72220B00 AS Date), N'05300704968', N'Üni. Cad. Kemalpaşa Mah. Daire 62 No 18', 5, 11, 7)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (6, N'Süleyman', N'Demirel', N'Erkek', CAST(0x94250B00 AS Date), N'05300704969', N'Üsütn Cad. Özge Mah. D Blok Daire 63 No 172', 7, 1, 2)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (7, N'Tansu', N'Çiller', N'Kadın', CAST(0xB9110B00 AS Date), N'05300704970', N'Bağlar Cad. Cadde Mah. D Blok Daire 64 No 20', 12, 11, 8)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (8, N'Güney', N'Tekinoğlu', N'Erkek', CAST(0xB6F40A00 AS Date), N'05300704971', N'Eskici Cad. Anıt Mah. B Blok Daire 65 No 52', 3, 2, 4)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (9, N'Behlül', N'Ziyagil', N'Erkek', CAST(0x38F20A00 AS Date), N'05300704961', N'Terzi Cad. Sarı Mah. Daire 66 No 14', 11, 1, 5)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (10, N'Bihter', N'Ziyagil', N'Kadın', CAST(0x9D070B00 AS Date), N'05300704962', N'Sakarya Cad. Işık Mah. Daire 67 No 13', 11, 1, 5)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (11, N'Burak', N'Özçivit', N'Erkek', CAST(0x28130B00 AS Date), N'05300704963', N'Övünç Cad. Lütüf Mah. Daire 68 No 12', 8, 11, 4)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (12, N'Ramiz', N'Karaeski', N'Erkek', CAST(0x18F20A00 AS Date), N'05300704964', N'Sarı Cad. Abacı Mah. Daire 69 No 22', 8, 11, 8)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (13, N'Serenay', N'Sarıkaya', N'Kadın', CAST(0x881A0B00 AS Date), N'05300704978', N'Zambak Cad. Tenekeci Mah. Daire 10 No 12', 3, 2, 3)
GO
INSERT [dbo].[Musteriler] ([Musteri_ID], [Ad], [Soyadı], [Cinsiyet], [DogumTarihi], [Telefon], [Adres], [Otobus_ID], [Servis_ID], [Sehir_ID]) VALUES (14, N'Suat', N'Çoban', N'Kadın', CAST(0xA1000B00 AS Date), N'05300704976', N'Kırım Cad. Kırım Mah. Daire 30 No 2', 11, 9, 6)
GO
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Otobusler] ON 

GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (1, 45, N'06 abc 12', 2, 1)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (2, 54, N'01 akl 13', 5, 1)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (3, 38, N'54 m 454', 3, 2)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (4, 46, N'35 m 324', 1, 3)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (5, 46, N'34 lb 42', 9, 5)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (6, 54, N'34 tm 885', 8, 4)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (7, 54, N'21 dıy 322', 6, 7)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (8, 38, N'34 ty 213', 10, 1)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (9, 54, N'35 ret 45', 4, 6)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (10, 46, N'45 mn 265', 1, 5)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (11, 46, N'07 tl 100', 7, 6)
GO
INSERT [dbo].[Otobusler] ([Otobus_ID], [Koltuk_Sayısı], [Plaka], [Sefer_ID], [Firma_ID]) VALUES (12, 38, N'41 kl 324', 10, 7)
GO
SET IDENTITY_INSERT [dbo].[Otobusler] OFF
GO
SET IDENTITY_INSERT [dbo].[Seferler] ON 

GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (1, CAST(0x070032F3D27F0000 AS Time), N'izmir', CAST(0x07007216E1C20000 AS Time), N'İstanbul')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (2, CAST(0x07004C64EB810000 AS Time), N'izmir', CAST(0x0700543AD4AB0000 AS Time), N'Ankara')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (3, CAST(0x070080461C860000 AS Time), N'Ankara', CAST(0x0700046BF4140000 AS Time), N'Diyarbakır')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (4, CAST(0x07002058A3A70000 AS Time), N'Zonguldak', CAST(0x07003CB8192E0000 AS Time), N'Eskişehir')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (5, CAST(0x0700BCFE35B40000 AS Time), N'Manisa', CAST(0x070058A5C8C00000 AS Time), N'İzmir')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (6, CAST(0x070058A5C8C00000 AS Time), N'izmir', CAST(0x0700000000000000 AS Time), N'Manisa')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (7, CAST(0x0700EAF9DB120000 AS Time), N'Sakarya', CAST(0x070074053F470000 AS Time), N'Konya')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (8, CAST(0x07001EDC0C170000 AS Time), N'Konya', CAST(0x0700A8E76F4B0000 AS Time), N'Sakarya')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (9, CAST(0x0700448E02580000 AS Time), N'İstanbul', CAST(0x070084B1109B0000 AS Time), N'İzmir')
GO
INSERT [dbo].[Seferler] ([Sefer_ID], [Kalkıs_Saati], [Kalkıs_Yeri], [Varıs_Saati], [Varıs_Yeri]) VALUES (10, CAST(0x0700AC5264600000 AS Time), N'Diyarbakır', CAST(0x0700DCC9A04F0000 AS Time), N'Kocaeli')
GO
SET IDENTITY_INSERT [dbo].[Seferler] OFF
GO
SET IDENTITY_INSERT [dbo].[Sehirler] ON 

GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (1, N'İzmir')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (2, N'Manisa')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (3, N'Ankara')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (4, N'Diyarbakır')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (5, N'Konya')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (6, N'Sakarya')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (7, N'İstanbul')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (8, N'Kocaeli')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (9, N'Zonguldak')
GO
INSERT [dbo].[Sehirler] ([Sehir_ID], [sehir_adı]) VALUES (10, N'Eskisehir')
GO
SET IDENTITY_INSERT [dbo].[Sehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[Servisler] ON 

GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (1, CAST(0x0700000000000000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (2, CAST(0x0700A01187210000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (3, CAST(0x070040230E430000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (4, CAST(0x0700E03495640000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (5, CAST(0x070080461C860000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (6, CAST(0x07002058A3A70000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (7, CAST(0x0700F0E066B80000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (8, CAST(0x070058A5C8C00000 AS Time), N'Otogar', N'Mahalle')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (9, CAST(0x0700000000000000 AS Time), N'Mahalle', N'Otogar')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (10, CAST(0x0700A01187210000 AS Time), N'Mahalle', N'Otogar')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (11, CAST(0x070040230E430000 AS Time), N'Mahalle', N'Otogar')
GO
INSERT [dbo].[Servisler] ([Servis_ID], [Servis_Kalkıs_Saati], [Servis_Kalkıs_Yeri], [Servis_Varıs_Yeri]) VALUES (12, CAST(0x07002058A3A70000 AS Time), N'Mahalle', N'Otogar')
GO
SET IDENTITY_INSERT [dbo].[Servisler] OFF
GO
ALTER TABLE [dbo].[Biletler]  WITH CHECK ADD  CONSTRAINT [FK_Biletler_Musteriler] FOREIGN KEY([Musteri_ID])
REFERENCES [dbo].[Musteriler] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Biletler] CHECK CONSTRAINT [FK_Biletler_Musteriler]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Otobusler] FOREIGN KEY([Otobus_ID])
REFERENCES [dbo].[Otobusler] ([Otobus_ID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Otobusler]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Sehirler] FOREIGN KEY([Sehir_ID])
REFERENCES [dbo].[Sehirler] ([Sehir_ID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Sehirler]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Servisler] FOREIGN KEY([Servis_ID])
REFERENCES [dbo].[Servisler] ([Servis_ID])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Servisler]
GO
ALTER TABLE [dbo].[Otobusler]  WITH CHECK ADD  CONSTRAINT [FK_Otubusler_Firmalar] FOREIGN KEY([Firma_ID])
REFERENCES [dbo].[Firmalar] ([Firma_ID])
GO
ALTER TABLE [dbo].[Otobusler] CHECK CONSTRAINT [FK_Otubusler_Firmalar]
GO
ALTER TABLE [dbo].[Otobusler]  WITH CHECK ADD  CONSTRAINT [FK_Otubusler_Seferler] FOREIGN KEY([Sefer_ID])
REFERENCES [dbo].[Seferler] ([Sefer_ID])
GO
ALTER TABLE [dbo].[Otobusler] CHECK CONSTRAINT [FK_Otubusler_Seferler]
GO
