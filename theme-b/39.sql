SELECT
  商品コード,
  商品名,
  単価,
  CASE
    WHEN 単価 < 3000 THEN 'S'
    WHEN 単価 BETWEEN 3000 AND 9999 THEN 'M'
    WHEN 単価 > 10000 THEN 'L'
    ELSE NULL
  # 誤り: END AS 商品価格ランク,
  END AS 販売価格ランク,
  CONCAT(
    商品区分,
    ':',
    CASE 商品区分
      WHEN '1' THEN '衣類'
      WHEN '2' THEN '靴'
      WHEN '3' THEN '雑貨'
      WHEN '9' THEN '未分類'
      ELSE NULL
    END
  ) AS 商品区分
FROM
  商品
ORDER BY
  単価,
  商品コード
;
