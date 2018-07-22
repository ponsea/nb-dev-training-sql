SELECT K.口座番号, K.名義,
  (CASE WHEN HK.口座番号 IS NULL THEN '○'
        ELSE '×' END) AS '有効'
FROM 口座 K LEFT OUTER JOIN 廃止口座 HK ON K.口座番号 = HK.口座番号
ORDER BY 名義
