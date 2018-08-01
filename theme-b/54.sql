SELECT
  商品コード
FROM
  注文
WHERE
  商品コード LIKE 'Z%'
GROUP BY
  商品コード
HAVING
  SUM(数量) >= 100
;
