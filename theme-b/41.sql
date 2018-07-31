SELECT
  注文日,
  SUBSTRING(注文番号, 9) AS 注文番号
FROM
  注文
;
