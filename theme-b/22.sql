SELECT
  商品コード
FROM
  注文
WHERE
  注文日 BETWEEN '2013-03-01' AND '2013-03-31'
  AND 数量 >= 3
;
