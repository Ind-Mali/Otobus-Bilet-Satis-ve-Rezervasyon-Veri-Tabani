select * from Seferler

select Kalkis_Yeri, Varis_Yeri, ABS(DATEDIFF(Hour, Kalkis_Saati,Varis_Saati)) as Tahmini_Varis_Siresi from Seferler

select * from Seferler order by Kalkis_Yeri

select kalkis_yeri, count(kalkis_yeri) as kalkisYeri from Seferler group by Kalkis_Yeri

select kalkis_yeri,count(kalkis_yeri) as kalkisYeri, Varis_yeri , count(Varis_Yeri) as Varis_Yeri from Seferler group by Kalkis_Yeri,Varis_Yeri