SELECT
  商品コード,
  商品名,
  単価
FROM
  商品
WHERE
  商品区分 = '9'
  AND (
    単価 <= 1000
    OR 単価 > 10000
  )
ORDER BY
  単価,
  商品コード
;
# 回答例はUNIONを使っている
# SELECT 商品コード, 商品名, 単価
#   FROM 商品
#  WHERE 商品区分 = '9'
#    AND 単価 <= 1000
#  UNION
# SELECT 商品コード, 商品名, 単価
#   FROM 商品
#  WHERE 商品区分 = '9'
#    AND 単価 > 10000
#  ORDER BY 3, 1
