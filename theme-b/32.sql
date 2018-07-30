SELECT DISTINCT
  S.商品コード
FROM
  商品 S
  INNER JOIN 注文 T
    ON S.商品コード = T.商品コード
ORDER BY
  S.商品コード DESC
;
