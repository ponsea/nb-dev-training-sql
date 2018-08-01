SELECT
  注文日,
  商品コード
FROM
  注文
WHERE
  商品コード IN (
    SELECT DISTINCT
      商品コード
    FROM
      商品
    WHERE
      商品名 LIKE '%あったか%'
  )
ORDER BY
  注文日
;
