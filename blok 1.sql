select a.kode, 
case b.jumlah when null then cast(0 as integer) else b.jumlah end
from dba.fungsiusaha a
left join
(select b23, 
sum(case b22 when '1' then 1 else 0 end) as kol1,
sum(case b22 when '2' then 1 else 0 end) as kol2,
sum(case b22 when '3' then 1 else 0 end) as kol3,
sum(case b22 when '4' then 1 else 0 end) as kol4,
sum(case b22 when '5' then 1 else 0 end) as kol5,
sum(case b22 when '6' then 1 else 0 end) as kol6,
sum(case b22 when '7' then 1 else 0 end) as kol7,
sum(case b22 when '8' then 1 else 0 end) as kol8,
count(b23) as jumlah 
from dba.perusahaan 
where errflag='C'
and (flag1 is null or flag1 ='' or flag1=' ')
group by b23
ORDER BY b23) b
on (a.kode=b.b23)