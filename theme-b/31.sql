SELECT DISTINCT
  S.商品コード
FROM
  商品 S
  LEFT OUTER JOIN 注文 T
    ON S.商品コード = T.商品コード
WHERE
  T.商品コード IS NULL
ORDER BY
  S.商品コード
;
