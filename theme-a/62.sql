SELECT *
FROM 口座 K
WHERE
  更新日 > ALL(
    SELECT 日付
    FROM 取引 T
    WHERE K.口座番号 = T.口座番号
  );
