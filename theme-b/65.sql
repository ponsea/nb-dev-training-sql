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
