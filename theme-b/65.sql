SELECT DISTINCT
  T.商品コード,
  S.商品名
FROM
  注文 T
  INNER JOIN (
    SELECT 商品コード, 商品名 FROM 商品
    UNION
    SELECT 商品コード, CONCAT(商品名, ' (廃番)') FROM 廃番商品
  ) S
    ON T.商品コード = S.商品コード
WHERE
  T.注文日 BETWEEN '2011-08-01' AND '2011-08-31'
;

# 回答例 (廃番商品テーブルを使わなくてよかったみたい)
# SELECT
#   T.商品コード,
#   COALESCE(S.商品名, '廃番') AS 商品名
# FROM
#   注文 AS T
#   LEFT JOIN 商品 AS S
#     ON T.商品コード = S.商品コード
# WHERE
#   T.注文日 >= '2011-08-01'
#   AND T.注文日 < '2011-09-01'
