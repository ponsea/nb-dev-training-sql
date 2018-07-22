SELECT K.口座番号, K.残高
FROM 口座 K INNER JOIN 廃止口座 HK ON K.口座番号 = HK.口座番号
WHERE K.残高 <> 0 AND HK.解約時残高 <> 0
ORDER BY K.口座番号
