select * from Seferler

select Kalk�s_Yeri, Var�s_Yeri, ABS(DATEDIFF(Hour, Kalk�s_Saati,Var�s_Saati)) as Tahmini_Var�s_S�resi from Seferler

select * from Seferler order by Kalk�s_Yeri

select kalk�s_yeri, count(kalk�s_yeri) as kalk��Yeri from Seferler group by Kalk�s_Yeri

select kalk�s_yeri,count(kalk�s_yeri) as kalk��Yeri, Var�s_yeri , count(Var�s_Yeri) as Var�s_Yeri from Seferler group by Kalk�s_Yeri,Var�s_Yeri