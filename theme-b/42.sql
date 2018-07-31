UPDATE
  商品
SET
  商品コード = CONCAT('E', SUBSTRING(商品コード, 2))
WHERE
  商品コード LIKE 'M%'
;
