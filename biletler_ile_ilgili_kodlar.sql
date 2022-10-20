select * from Biletler

select * from Biletler where YolcuCinsiyet = 'Erkek'

select * from Biletler where YolcuCinsiyet = 'Kadin'

select * from Biletler where KoltukNo between '2' and '8'

select sum(Ucret) as Toplam_Ucret, AVG(Ucret) as Ucret_Ortalamasi, min(Ucret) as Ucret_Mimumum, MAX(Ucret) as Ucret_Maksimum from Biletler

select * from Biletler order by Ucret desc

select * from Biletler order by Ucret asc 

select Tarih, count (Tarih) as Yolcu_Sayisi from Biletler group by Tarih

select SatisMiRezervasyonMu, count ('Satis') as iilemledeki_Biletler from Biletler group by SatisMiRezervasyonMu

select Tarih, count (Tarih) as Yolcu_Sayisi from Biletler group by Tarih

select Yolcu_Adi+' '+Yolcu_Soyad as Adi_Soyadi, DATEDIFF(hour,DogumTarihi,GETDATE())/8766 as Yolcu_Yaii, Ucret from Biletler a inner join Musteriler b
on a.Musteri_ID=b.Musteri_ID group by Yolcu_Adi,Yolcu_Soyad,Ucret, DogumTarihi having AVG(ucret)>30 and Avg(Ucret)<100
