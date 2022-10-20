select * from Musteriler

select Cinsiyet, count(Cinsiyet) as Yolcu_Say�s� from Musteriler group by Cinsiyet

select ad, soyad�, DATEDIFF(hour,DogumTarihi,GETDATE())/8766 as Yolcu_Ya�� from Musteriler

select Ad+' '+Soyad� , len(Ad) as Ad_HarfSay�s�,len(Soyad�) as Soyad�_HarfSay�s�  from Musteriler 

select Ad+' '+ Soyad� as Ad�_Soyad� , DogumTarihi from Musteriler where DogumTarihi > '1991.03.05'

select * from Musteriler a inner join Sehirler b on a.Sehir_ID=b.Sehir_ID

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where Sat�sM�RezervasyonMu = 'Sat��'

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where Sat�sM�RezervasyonMu = 'Rezervasyon'

select * from Musteriler a inner join seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyad�, cinsiyet,Kalk�s_Yeri,Var�s_Yeri from Musteriler a inner join Seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyad�, Servis_Kalk�s_Yeri, Servis_Var�s_Yeri , Servis_Kalk�s_Saati from Musteriler a inner join Servisler b on a.Servis_ID=b.Servis_ID
order by Servis_Kalk�s_Yeri, Servis_Var�s_Yeri

select Servis_Kalk�s_Yeri, Servis_Var�s_Yeri, Servis_Kalk�s_Saati, Ad, Soyad� from Musteriler a  inner join Servisler b on a.Servis_ID=b.Servis_ID