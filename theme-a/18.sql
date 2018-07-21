# 誤り: SELECT * FROM 口座 WHERE 種別 IN (2, 3);
SELECT * FROM 口座 WHERE 種別 IN ('2', '3');
