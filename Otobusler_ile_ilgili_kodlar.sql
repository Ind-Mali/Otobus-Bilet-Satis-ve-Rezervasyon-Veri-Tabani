select * from Otobusler

select * from Otobusler  order by Koltuk_Sayisi

select * from Otobusler a inner join Seferler b on a.Sefer_ID=b.Sefer_ID

select * from Firmalar a inner join Otobusler b on a.Firma_ID=b.Firma_ID

select Koltuk_Sayisi, Firma_Adi from Otobusler a inner join Firmalar b on a.Firma_ID=b.Firma_ID
 order by Firma_Adi