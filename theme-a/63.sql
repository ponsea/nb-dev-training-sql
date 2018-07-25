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

# 間違ってはいないと思うが、参考書の回答例とはかなり違っていた。
# 以下参考書の回答例

# SELECT A.日付, B.最大入金額, B.最大出金額
# FROM
#   (
#     SELECT
#       日付,
#       SUM(入金額) AS 入金額合計,
#       SUM(出金額) AS 出金額合計
#     FROM 取引
#     WHERE 口座番号 = '3104451'
#     GROUP BY 日付
#     HAVING
#       SUM(入金額) > 0 AND
#       SUM(出金額) > 0
#   ) AS A,
#   (
#     SELECT
#       MAX(入金額) AS 最大入金額,
#       MAX(出金額) AS 最大出金額
#     FROM 取引
#     WHERE 口座番号 = '3104451'
#   ) AS B
