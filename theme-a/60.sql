SELECT
  残高,
  (
    SELECT SUM(入金額)
    FROM 取引
    WHERE 口座番号 = '1115600' AND 日付 = '2012-12-28'
  ) AS 入金額,
  (
    SELECT SUM(出金額)
    FROM 取引
    WHERE 口座番号 = '1115600' AND 日付 = '2012-12-28'
# 誤り: ) AS 入金額
  ) AS 出金額
FROM 口座
WHERE 口座番号 = '1115600';
