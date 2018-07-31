SELECT
  商品コード,
  単価,
  TRUNCATE(単価 * 0.95, 0) AS キャンペーン価格
FROM
  商品
WHERE
  商品区分 = '9'
ORDER BY
  商品コード
;
