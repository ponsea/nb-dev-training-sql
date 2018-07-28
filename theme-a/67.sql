SELECT K.口座番号, K.名義, K.残高
FROM 口座 K INNER JOIN 取引 T ON K.口座番号 = T.口座番号
WHERE T.日付 = '2011-03-01';
