insert into Firmalar values ('Metro');
insert into Firmalar values ('Nilifer');
insert into Firmalar values ('Anadolu');
insert into Firmalar values ('Buzlu');
insert into Firmalar values ('Efetur');
insert into Firmalar values ('Pamukkale');
insert into Firmalar values ('Oz Diyarbakir');

insert into Sehirler values ('izmir');
insert into Sehirler values ('Manisa');
insert into Sehirler values ('Ankara');
insert into Sehirler values ('Diyarbakir');
insert into Sehirler values ('Konya');
insert into Sehirler values ('Sakarya');
insert into Sehirler values ('istanbul');
insert into Sehirler values ('Kocaeli');
insert into Sehirler values ('Zonguldak');
insert into Sehirler values ('Eskisehir');

insert into Seferler values ('15:30','izmir','20:30','Ankara');
insert into Seferler values ('16:00','Ankara','02:30','Diyarbakir');
insert into Seferler values ('20:00','Zonguldak','05:30','Eskiiehir');
insert into Seferler values ('21:30','Manisa','23:00','izmir');
insert into Seferler values ('23:00','izmir','00:00','Manisa');
insert into Seferler values ('02:15','Sakarya','08:30','Konya');
insert into Seferler values ('02:45','Konya','09:00','Sakarya');
insert into Seferler values ('10:30','istanbul','18:30','izmir');
insert into Seferler values ('11:30','Diyarbakir','09:30','Kocaeli');



insert into Otobusler values (54, '01 akl 13',5,1);
insert into Otobusler values (38, '54 m 454',3,2);
insert into Otobusler values (46, '35 m 324',1,3);
insert into Otobusler values (46, '34 lb 42',9,5);
insert into Otobusler values (54, '34 tm 885',8,4);
insert into Otobusler values (54, '21 diy 322',6,7);
insert into Otobusler values (38, '34 ty 213',10,1);
insert into Otobusler values (54, '35 ret 45',4,6);
insert into Otobusler values (46, '45 mn 265',1,5);
insert into Otobusler values (46, '07 tl 100',7,6);
insert into Otobusler values (38, '41 kl 324',10,7);



insert into Servisler values ('00:00','Otogar','Mahalle');
insert into Servisler values ('04:00','Otogar','Mahalle');
insert into Servisler values ('08:00','Otogar','Mahalle');
insert into Servisler values ('12:00','Otogar','Mahalle');
insert into Servisler values ('16:00','Otogar','Mahalle');
insert into Servisler values ('20:00','Otogar','Mahalle');
insert into Servisler values ('22:00','Otogar','Mahalle');
insert into Servisler values ('23:00','Otogar','Mahalle');
insert into Servisler values ('00:00','Mahalle','Otogar');
insert into Servisler values ('04:00','Mahalle','Otogar');
insert into Servisler values ('08:00','Mahalle','Otogar');
insert into Servisler values ('20:00','Mahalle','Otogar');





insert into Musteriler values('Mali','Yilmaz','Erkek','1991.03.05','05300704965','ini. Cad. Kemalpaia Mah. D Blok Daire 60 No 22', '2','1','1');
insert into Musteriler values('Oktay','Arabaci','Erkek','1997.05.01','05304567477','Atatirk Cad. Iramk Mah. C Blok Daire 6 No 21', '3','2','3');
insert into Musteriler values('Hatice','Balgic','Kadin','1999.06.08','05300704966','Kazim Cad. Atif Mah. Daire 60 No 44', '2','1','1');
insert into Musteriler values('Kuzey','Tekinoglu','Erkek','1997.05.06','05300704967','Eski Cad. Yeni Mah. A Blok Daire 61 No 22', '4','1','3');
insert into Musteriler values('Mesut','Yilmaz','Erkek','1998.11.22','05300704968','ini. Cad. Kemalpaia Mah. Daire 62 No 18', '5','11','7');
insert into Musteriler values('Suleyman','Demirel','Erkek','2001.02.01','05300704969','isitn Cad. izge Mah. D Blok Daire 63 No 172', '7','1','2');
insert into Musteriler values('Tansu','ciller','Kadin','1987.03.04','05300704970','Bailar Cad. Cadde Mah. D Blok Daire 64 No 20', '12','11','8');
insert into Musteriler values('Giney','Tekinoglu','Erkek','1966.11.02','05300704971','Eskici Cad. Anit Mah. B Blok Daire 65 No 52', '3','2','4');
insert into Musteriler values('Behlil','Ziyagil','Erkek','1965.02.02','05300704961','Terzi Cad. Sari Mah. Daire 66 No 14', '11','1','5');
insert into Musteriler values('Bihter','Ziyagil','Kadin','1980.02.01','05300704962','Sakarya Cad. Iiik Mah. Daire 67 No 13', '11','1','5');
insert into Musteriler values('Burak','Ozcivit','Erkek','1988.03.05','05300704963','ivini Cad. Litif Mah. Daire 68 No 12', '8','11','4');
insert into Musteriler values('Ramiz','Karaeski','Erkek','1965.01.01','05300704964','Sari Cad. Abaci Mah. Daire 69 No 22', '8','11','8');
insert into Musteriler values('Serenay','Sarikaya','Kadin','1993.05.06','05300704978','Zambak Cad. Tenekeci Mah. Daire 10 No 12', '3','2','3');
insert into Musteriler values('Suat','Coban','Kadin','1975.03.11','05300704976','Kirim Cad. Kirim Mah. Daire 30 No 2', '11','9','6');



insert into Biletler values('Satis',1,'Erkek','Mali','Yilmaz',150,'2020.01.02','1');
insert into Biletler values('Satis',2,'Erkek','Oktay','Arabaci',100,'2020.01.02','2');
insert into Biletler values('Rezervasyon',4,'Kadin','Hatice','Balgic',150,'2020.01.02','3');
insert into Biletler values('Satis',2,'Erkek','Kuzey','Tekinoglu',125,'2020.01.30', '4');
insert into Biletler values('Satis',6,'Erkek','Mesut','Yilmaz',55,'2020.02.20','5');
insert into Biletler values('Rezervasyon',5,'Erkek','Suleyman','Demirel',75,'2020.02.10','6');
insert into Biletler values('Rezervasyon',7,'Kadin','Tansu','ciller',130,'2020.02.20','7');
insert into Biletler values('Satis',12,'Erkek','Giney','Tekinoglu',115,'2020.02.20','8');
insert into Biletler values('Rezervasyon',15,'Erkek','Behlil','Ziyagil',45,'2020.02.20','9');
insert into Biletler values('Satis',2,'Kadin','Bihter','Ziyagil',36,'2020.04.10','10');
insert into Biletler values('Rezervasyon',2,'Erkek','Burak','Ozcivit',85,'2020.04.15','11');
insert into Biletler values('Satis',3,'Erkek','Ramiz','Karaeski',154,'2020.04.15','12');
insert into Biletler values('Rezervasyon',25,'Kadin','Serenay','Sarikaya',98,'2020.05.05','13');
insert into Biletler values('Satis',25,'Kadin','Suat','Coban',37,'2020.05.15','14');
