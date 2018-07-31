SELECT DISTINCT
  商品区分 AS 区分,
  CASE 商品区分
    WHEN '1' THEN '衣類'
    WHEN '2' THEN '靴'
    WHEN '3' THEN '雑貨'
    WHEN '9' THEN '未分類'
    ELSE NULL
  END AS 区分名
FROM
  商品
;
