SELECT a.kdprop, a.kdkabu, a.noperusahaan, a.b22, b.nokabukotanegara, b.kode, a.b51avolume as beline , b.persen
FROM perusahaan a
    LEFT JOIN wilpembelianpedagang b ON (a.kdprop=b.kdprop AND a.kdkabu=b.kdkabu AND a.kdkeca=b.kdkeca AND a.kdkelr=b.kdkelr AND a.noperusahaan=b.noperusahaan)
--WHERE --a.b22='1' AND a.b23='1' AND a.b31c>0 AND a.errflag='C' AND (a.flag1 IS NULL OR a.flag1='') AND a.kdprop<>'31'
WHERE a.errflag='C' and (a.flag1 is null or a.flag1='' or a.flag1=' ')
and a.kdprop='11' and b.kode like '11%'
GROUP BY a.kdprop, a.kdkabu, a.noperusahaan, a.b22, b.nokabukotanegara, b.kode, b.persen
ORDER BY a.kdprop, a.kdkabu, a.b22, a.noperusahaan

--SUBSTRING(kode,1,2)='31'