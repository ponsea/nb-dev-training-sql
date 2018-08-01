SELECT
  商品コード,
  SUM(数量) AS 販売した数量
FROM
  注文
GROUP BY
  商品コード
ORDER BY
  販売した数量 DESC,
  商品コード
LIMIT
  10
;
