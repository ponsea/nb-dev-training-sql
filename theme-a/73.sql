SELECT
  K.口座番号,
  K.名義,
  K.残高,
  T.日付,
  T.取引事由ID,
  T.入金額,
  T.出金額
FROM
  口座 K
  INNER JOIN
  (
    SELECT *
    FROM 取引
    WHERE 
      日付 >= '2013-01-01' AND
      (入金額 >= 1000000 OR 出金額 >= 1000000)
  ) T
  ON K.口座番号 = T.口座番号
WHERE
  K.残高 >= 5000000;
