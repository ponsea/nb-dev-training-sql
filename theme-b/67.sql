SELECT
  T.注文日,
  CONCAT(S.商品コード, ':', S.商品名) AS 商品,
  COALESCE(数量, 0) AS 数量
FROM
  注文 T
  RIGHT OUTER JOIN (
    SELECT 商品コード, 商品名, 商品区分 FROM 商品
    UNION
    SELECT 商品コード, '(廃番済み)', 商品区分 FROM 廃番商品
  ) S
    ON T.商品コード = S.商品コード
WHERE
  S.商品区分 = '3'
;
# 回答例 (廃番商品テーブルと対応付ける必要はなかったみたい）
# SELECT T.注文日,
#        COALESCE(S.商品コード || ':' || S.商品名, T.商品コード || ':（廃番済み）') AS 商品,
#        COALESCE(T.数量, 0) AS 数量
#   FROM 注文 AS T
#   FULL JOIN 商品 AS S
#          ON T.商品コード = S.商品コード
#  WHERE S.商品区分 = '3'

/*
-- FULL JOINが使えない場合、以下で代替
SELECT 注文日, 商品, 数量 FROM (
   SELECT S.商品区分, T.注文日,
          COALESCE(S.商品コード || ':' || S.商品名, T.商品コード || ':（廃番済み）') AS 商品,
          COALESCE(T.数量, 0) AS 数量
     FROM 注文 AS T
LEFT JOIN 商品 AS S
       ON T.商品コード = S.商品コード
UNION
   SELECT S.商品区分, T.注文日,
          COALESCE(S.商品コード || ':' || S.商品名, T.商品コード || ':（廃番済み）') AS 商品,
          COALESCE(T.数量, 0) AS 数量
     FROM 注文 AS T
RIGHT JOIN 商品 AS S
       ON T.商品コード = S.商品コード
) 
    WHERE 商品区分 = '3'
*/
