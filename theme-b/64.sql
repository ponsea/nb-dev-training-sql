SELECT DISTINCT
  T.商品コード,
  S.商品名
FROM
  注文 T
  INNER JOIN 商品 S
    ON T.商品コード = S.商品コード
WHERE
  T.注文日 BETWEEN '2011-08-01' AND '2011-08-31'
;
