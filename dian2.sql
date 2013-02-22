select kdprop, kdkabu, noperusahaan, b23, b51avolume, b51anilai, b51dnilai, b51dvolume, b52
from perusahaan
where errflag='C' and (flag1='' or flag1 is null or flag1= ' ') 
AND b22='5' and b51dnilai-b51anilai<1
order by kdprop, kdkabu, noperusahaan
