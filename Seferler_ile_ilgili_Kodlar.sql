select * from Seferler

select Kalkıs_Yeri, Varıs_Yeri, ABS(DATEDIFF(Hour, Kalkıs_Saati,Varıs_Saati)) as Tahmini_Varıs_Süresi from Seferler

select * from Seferler order by Kalkıs_Yeri

select kalkıs_yeri, count(kalkıs_yeri) as kalkışYeri from Seferler group by Kalkıs_Yeri

select kalkıs_yeri,count(kalkıs_yeri) as kalkışYeri, Varıs_yeri , count(Varıs_Yeri) as Varıs_Yeri from Seferler group by Kalkıs_Yeri,Varıs_Yeri