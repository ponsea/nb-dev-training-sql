SELECT
  商品コード,
  商品名,
  単価,
  (
    SELECT
      SUM(数量)
    FROM
      注文
    WHERE
      商品コード = 'S0604'
  ) AS 販売数量
FROM
  商品
WHERE
  商品コード = 'S0604'
;
