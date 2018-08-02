SELECT
  T.注文日,
  CONCAT(S.商品コード, ':', S.商品名) AS 商品,
  COALESCE(数量, 0) AS 数量
FROM
  注文 T
  RIGHT OUTER JOIN (
    SELECT 商品コード, 商品名, 商品区分 FROM 商品
    UNION
    SELECT 商品コード, '(廃番済み)', 商品区分 FROM 廃番商品
  ) S
    ON T.商品コード = S.商品コード
WHERE
  S.商品区分 = '3'
;
