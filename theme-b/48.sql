SELECT
  商品区分,
  MAX(単価) AS 最小額,
  MIN(単価) AS 最高額
FROM
  商品
GROUP BY
  商品区分
ORDER BY
  商品区分
;
