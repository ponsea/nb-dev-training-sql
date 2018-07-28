SELECT
  K.名義,
  K.口座番号,
  K.種別,
  K.残高,
  K.更新日
FROM 口座 K
WHERE
  名義 IN (
    SELECT DISTINCT 名義
    FROM 口座 K2
    WHERE
      2 <= (
        SELECT COUNT(*)
        FROM 口座 K3
        WHERE K2.名義 = K3.名義
      )
  )
ORDER BY K.名義, K.口座番号;
