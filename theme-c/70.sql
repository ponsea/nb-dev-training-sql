SELECT
  E.イベント番号,
  E.イベント名称,
  COUNT(*) AS 前提イベント数
FROM
  イベント E
  INNER JOIN イベント E2
    ON E.イベント番号 = E2.前提イベント番号
GROUP BY
  E.イベント番号,
  E.イベント名称
ORDER BY
  E.イベント番号
;

# 回答例(まわりくどい)
# SELECT E.イベント番号, E.イベント名称, Z.前提イベント数 
#   FROM イベント E
#   JOIN (SELECT 前提イベント番号,
#                COUNT(前提イベント番号) AS 前提イベント数
#           FROM イベント
#          WHERE 前提イベント番号 IS NOT NULL
#          GROUP BY 前提イベント番号) Z
#     ON E.イベント番号 = Z.前提イベント番号
#  ORDER BY E.イベント番号
