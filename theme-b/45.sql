SELECT
  商品コード,
  商品名,
  単価,
  TRUNCATE(単価 * 0.7, 0) AS 値下げした単価
FROM
  商品
;
