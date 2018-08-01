SELECT
  商品コード,
  SUM(数量) AS 数量の合計
FROM
  注文
GROUP BY
  商品コード
ORDER BY
  商品コード
;
