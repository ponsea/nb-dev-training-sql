SELECT
  注文日,
  CONCAT(注文番号, '-', 注文枝番) AS 注文番号,
  商品コード,
  数量,
  クーポン割引料
FROM
  注文
WHERE
  注文番号 BETWEEN '201210010001' AND '201210319999'
;
