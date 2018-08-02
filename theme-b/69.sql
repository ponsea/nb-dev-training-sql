SELECT
  S.商品コード,
  S.商品名,
  S.単価,
  SUM(T.数量) AS 売上個数,
  SUM(T.数量) * 単価 AS 総売上金額
FROM
  商品 S
  INNER JOIN 注文 T
    ON S.商品コード = T.商品コード
WHERE
  S.商品コード LIKE 'B%'
GROUP BY
  S.商品コード,
  S.商品名,
  S.単価
ORDER BY
  T.商品コード
;
