select kdprop, kdkabu, noperusahaan, nmperusahaan, b22, b51avolume, b51anilai, b51dvolume, b51dnilai, b51dnilai-b51anilai as margin, b52, creator, createdate, modifier, modifydate--, * 
from perusahaan where --kdprop='72' and kdkabu='71'
errflag='C' and (flag1='' or flag1 is null or flag1= ' ') --and kdprop='33' and modifier='DIAN'
and b22='5'
--and b51dnilai-b51anilai<1
ORDER BY kdprop, kdkabu, noperusahaan
--and noperusahaan in ('9002', '9022') --and b22='4' --and nmperusahaan like '%ADIRA%'