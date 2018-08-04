SELECT
  'クリアした' AS 区分,
  COUNT(*) AS イベント数
FROM
  経験イベント
WHERE
  クリア区分 = '1'
UNION
SELECT
  '参加したがクリアしていない' AS 区分,
  COUNT(*) AS イベント数
FROM
  経験イベント
WHERE
  クリア区分 = '0'
;

# 回答例（こっちのほうが好ましいと思う）
# SELECT CASE クリア区分 WHEN '1' THEN 'クリアした'
#                     WHEN '0' THEN '参加したがクリアしていない'
#        END AS 区分,
#        COUNT(イベント番号) AS イベント数
#   FROM 経験イベント
#  GROUP BY クリア区分
