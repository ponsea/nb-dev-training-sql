SELECT
  S.商品コード,
  S.商品名,
  S.単価,
  T.注文日,
  T.注文番号,
  T.数量,
  S.単価 * T.数量 AS 売上金額
FROM
  商品 S
  INNER JOIN 注文 T
    ON S.商品コード = T.商品コード
WHERE
  S.商品コード = 'S0604'
ORDER BY
  注文日
;
