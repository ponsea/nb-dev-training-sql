SELECT
  SUM(T.数量) AS 割引による販売数,
  TRUNCATE(AVG(T.クーポン割引料), 0) AS 平均割引額
FROM
  (
    SELECT
      数量,
      クーポン割引料
    FROM
      注文
    WHERE
      クーポン割引料 IS NOT NULL
      AND 商品コード = 'W0746'
  ) AS T
;

