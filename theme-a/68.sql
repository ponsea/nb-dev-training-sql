SELECT K.口座番号, K.名義, K.残高
FROM 口座 K INNER JOIN 取引 T ON K.口座番号 = T.口座番号
WHERE T.日付 = '2011-03-01'

UNION

SELECT HK.口座番号, '解約済み' AS 名義, 0 AS 残高
FROM 廃止口座 HK INNER JOIN 取引 T ON HK.口座番号 = T.口座番号
WHERE T.日付 = '2011-03-01';
