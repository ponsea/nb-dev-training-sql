SELECT
  K.口座番号,
  T_COUNT.回数,
  K.名義
FROM
  口座 K
  INNER JOIN
  (
    SELECT 口座番号, 日付, COUNT(*) AS 回数
    FROM 取引
    GROUP BY 口座番号, 日付
    HAVING COUNT(*) >= 3
  ) T_COUNT
  ON K.口座番号 = T_COUNT.口座番号;

