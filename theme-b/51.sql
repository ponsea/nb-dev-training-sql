SELECT
  商品コード,
  SUM(数量) AS 数量の合計
FROM
 注文
GROUP BY
  商品コード
HAVING
  SUM(数量) < 5
;
