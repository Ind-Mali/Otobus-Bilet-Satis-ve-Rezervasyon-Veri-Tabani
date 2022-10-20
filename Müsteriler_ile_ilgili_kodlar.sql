select * from Musteriler

select Cinsiyet, count(Cinsiyet) as Yolcu_Sayisi from Musteriler group by Cinsiyet

select ad, soyadi, DATEDIFF(hour,DogumTarihi,GETDATE())/8766 as Yolcu_Yaii from Musteriler

select Ad+' '+Soyadi , len(Ad) as Ad_HarfSayisi,len(Soyadi) as Soyadi_HarfSayisi  from Musteriler 

select Ad+' '+ Soyadi as Adi_Soyadi , DogumTarihi from Musteriler where DogumTarihi > '1991.03.05'

select * from Musteriler a inner join Sehirler b on a.Sehir_ID=b.Sehir_ID

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where SatisMiRezervasyonMu = 'Satii'

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where SatisMiRezervasyonMu = 'Rezervasyon'

select * from Musteriler a inner join seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyadi, cinsiyet,Kalkis_Yeri,Varis_Yeri from Musteriler a inner join Seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyadi, Servis_Kalkis_Yeri, Servis_Varis_Yeri , Servis_Kalkis_Saati from Musteriler a inner join Servisler b on a.Servis_ID=b.Servis_ID
order by Servis_Kalkis_Yeri, Servis_Varis_Yeri

select Servis_Kalkis_Yeri, Servis_Varis_Yeri, Servis_Kalkis_Saati, Ad, Soyadi from Musteriler a  inner join Servisler b on a.Servis_ID=b.Servis_ID