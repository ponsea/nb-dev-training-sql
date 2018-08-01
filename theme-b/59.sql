# 誤り
# SELECT
#   SUM(T.数量) AS 割引による販売数,
#   TRUNCATE(AVG(T.クーポン割引料), 0) AS 平均割引額
# FROM
#   (
#     SELECT
#       数量,
#       クーポン割引料
#     FROM
#       注文
#     WHERE
#       クーポン割引料 IS NOT NULL
#       AND 商品コード = 'W0746'
#   ) AS T
# ;
# 

# 回答例
SELECT
  A.数量合計 AS 割引による販売数,
  TRUNCATE(A.割引料合計 / A.数量合計, 0) AS 平均割引額
FROM
  (
    SELECT
      SUM(数量) AS 数量合計,
      SUM(クーポン割引料) AS 割引料合計
    FROM
      注文
    WHERE
      商品コード = 'W0746'
      AND クーポン割引料 IS NOT NULL
  ) AS A
;
