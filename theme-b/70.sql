SELECT
  S.商品コード,
  S.商品名,
  S.関連商品コード,
  S2.商品名 AS 関連商品名
FROM
  商品 S
  INNER JOIN 商品 S2
    ON S.関連商品コード = S2.商品コード
;
