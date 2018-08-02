SELECT
  T.注文番号,
  T.注文枝番,
  S.商品コード,
  S.商品名,
  T.数量
FROM
  注文 T
  INNER JOIN 商品 S
    ON T.商品コード = S.商品コード
WHERE
  注文番号 = '201301130115'
ORDER BY
  注文番号,
  注文枝番
;
