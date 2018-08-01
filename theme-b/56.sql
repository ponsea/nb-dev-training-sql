UPDATE
  注文
SET
  商品コード = (
    SELECT
      商品コード
    FROM
      商品
    WHERE
      商品区分 = '2'
      AND 商品名 LIKE '%ブーツ%'
      AND 商品名 LIKE '%雨%'
      AND 商品名 LIKE '%安心%'
  )
WHERE
  注文日 = '2013-03-15'
  AND 注文番号 = '201303150014'
  AND 注文枝番 = '1'
;
