SELECT
  商品コード,
  SUM(数量) AS 販売数量
FROM
  注文
GROUP BY
  商品コード
HAVING
  SUM(数量) > ALL (
    SELECT
      AVG(数量)
    FROM
      注文
    GROUP BY
      商品コード
  )
;
