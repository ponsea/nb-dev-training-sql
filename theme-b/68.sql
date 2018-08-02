SELECT
  T.注文日,
  T.注文番号,
  T.注文枝番,
  S.商品コード,
  S.商品名,
  S.単価,
  T.数量,
  S.単価 * 数量 - COALESCE(クーポン割引料, 0) AS 注文金額
FROM
  注文 T
  INNER JOIN (
    SELECT 商品コード, 商品名, 単価 FROM 商品
    UNION
    SELECT 商品コード, 商品名, 単価 FROM 廃番商品
  ) S
    ON T.商品コード = S.商品コード
WHERE
  T.注文番号 = '201204030010'
;
