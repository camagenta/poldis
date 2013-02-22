select kdprop, kdkabu, noperusahaan, b51avolume, b51anilai, b51bvolume, b51cvolume, b51dvolume, b51dnilai, b51dnilai-b51anilai as margin, b52, creator, createdate, modifier, modifydate--, * 
from perusahaan where --kdprop='72' and kdkabu='71'
errflag='C' and (flag1='' or flag1 is null or flag1= ' ') --and kdprop='33' and modifier='DIAN'
and b22='5' --and kdprop='33' and modifier='DIAN'
order by kdprop, kdkabu, noperusahaan