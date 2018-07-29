SELECT
  *
FROM
  商品
WHERE
  (
    商品区分 = '1'
    AND 単価 <= 3000
  )
  OR (
    商品区分 = '3'
    AND 単価 >= 10000
  )
;
