select * from Musteriler

select Cinsiyet, count(Cinsiyet) as Yolcu_Sayýsý from Musteriler group by Cinsiyet

select ad, soyadý, DATEDIFF(hour,DogumTarihi,GETDATE())/8766 as Yolcu_Yaþý from Musteriler

select Ad+' '+Soyadý , len(Ad) as Ad_HarfSayýsý,len(Soyadý) as Soyadý_HarfSayýsý  from Musteriler 

select Ad+' '+ Soyadý as Adý_Soyadý , DogumTarihi from Musteriler where DogumTarihi > '1991.03.05'

select * from Musteriler a inner join Sehirler b on a.Sehir_ID=b.Sehir_ID

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where SatýsMýRezervasyonMu = 'Satýþ'

select * from Biletler a inner join Musteriler b on a.Musteri_ID=b.Musteri_ID where SatýsMýRezervasyonMu = 'Rezervasyon'

select * from Musteriler a inner join seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyadý, cinsiyet,Kalkýs_Yeri,Varýs_Yeri from Musteriler a inner join Seferler b on a.Otobus_ID=b.Sefer_ID

select ad+' '+Soyadý, Servis_Kalkýs_Yeri, Servis_Varýs_Yeri , Servis_Kalkýs_Saati from Musteriler a inner join Servisler b on a.Servis_ID=b.Servis_ID
order by Servis_Kalkýs_Yeri, Servis_Varýs_Yeri

select Servis_Kalkýs_Yeri, Servis_Varýs_Yeri, Servis_Kalkýs_Saati, Ad, Soyadý from Musteriler a  inner join Servisler b on a.Servis_ID=b.Servis_ID