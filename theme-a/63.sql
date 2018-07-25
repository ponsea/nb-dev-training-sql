SELECT
  T1.日付,
  (SELECT MAX(入金額) FROM 取引 WHERE 口座番号 = '3104451') AS 最大入金額,
  (SELECT MAX(出金額) FROM 取引 WHERE 口座番号 = '3104451') AS 最大出金額
FROM
  (
    SELECT DISTINCT 日付
    FROM 取引
    WHERE
      入金額 IS NOT NULL AND
      口座番号 = '3104451'
  ) AS T1
  INNER JOIN
  (
    SELECT DISTINCT 日付
    FROM 取引
    WHERE
      出金額 IS NOT NULL AND
      口座番号 = '3104451'
  ) AS T2
  ON T1.日付 = T2.日付;

