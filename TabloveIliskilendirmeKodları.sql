create database Otobus_Bilet
use Otobus_Bilet

create table Otobusler(
Otobus_ID int IDENTITY(1,1) NOT NULL,
Koltuk_Sayisi int not null,
Plaka nvarchar(50) not null,
Sefer_ID int not null,
Firma_ID int not null,
constraint PK_Otobusler primary key clustered (Otobus_ID))

alter table Otobusler add constraint FK_Otubusler_Seferler foreign key(Sefer_ID)
references Seferler(Sefer_ID)

alter table Otobusler add constraint FK_Otubusler_Firmalar foreign key(Firma_ID)
references Firmalar(Firma_ID)

create table Seferler(
Sefer_ID int IDENTITY (1,1) NOT NULL,
Varis_Saati time(7) null,
Tahmini_Sire time(7) not null,
Kalkis_Saati time(7) not null,
Kalkis_Yeri nvarchar(50) not null,
BiletTutari int not null,
constraint PK_Seferler primary key clustered(Sefer_ID))



create table Musteriler( 
Musteri_ID int identity(1,1) not null,
Ad nvarchar(50) not null,
Soyadi nvarchar(50) not null,
Cinsiyet nvarchar(50) not null,
DogumTarihi date not null,
Telefon nvarchar(50) not null,
Adres nvarchar(50) null,
Otobus_ID int not null,
Servis_ID int not null,
Sehir_ID int not null,
constraint PK_Musteriler primary key clustered(Musteri_ID))


ALTER TABLE Musteriler ADD  CONSTRAINT  FK_Musteriler_Otobusler FOREIGN KEY(Otobus_ID )
REFERENCES Otobusler(Otobus_ID)

ALTER TABLE Musteriler ADD  CONSTRAINT  FK_Musteriler_Servisler FOREIGN KEY(Servis_ID )
REFERENCES Servisler(Servis_ID)

ALTER TABLE Musteriler ADD  CONSTRAINT  FK_Musteriler_Sehirler FOREIGN KEY(Sehir_ID )
REFERENCES Sehirler(Sehir_ID)


create table Biletler(
Bilet_ID int identity (1,1) not null,
SatisMiRezervasyonMu nvarchar(50) not null,
KoltukNo int not null,
YolcuCinsiyet nvarchar(50) not null,
Yolcu_Adi nvarchar(50) not null,
Yolcu_Soyad nvarchar(50) not null,
Ucret int not null,
Tarih date not null,
Musteri_ID int not null,
constraint PK_Biletler primary key clustered(Bilet_ID))

alter table Biletler ADD CONSTRAINT FK_Biletler_Musteriler FOREIGN KEY(Musteri_ID)
REFERENCES Musteriler(Musteri_ID)

create table Servisler(
Servis_ID int identity (1,1) not null,
Servis_Kalkis_Saati time not null,
Servis_Kalkis_Yeri nvarchar(50) not null,
Servis_Varis_Yeri nvarchar(50) not null,
constraint PK_Servisler primary key clustered(Servis_ID))


create table Firmalar(
Firma_ID int identity (1,1) not null,
Firma_Adi nvarchar(50) not null,
constraint PK_Markalar primary key clustered (Firma_ID))



create table Sehirler(
Sehir_ID int identity (1,1) not null,
sehir_adi nvarchar(50) not null,
constraint PK_Sehirler primary key clustered(Sehir_ID))
