SELECT
  COUNT(*)
FROM
  イベント E
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      経験イベント K
    WHERE
      E.イベント番号 = K.イベント番号
  )
;

# 回答例(EXCEPTを使っている)
# SELECT COUNT(*) AS 未着手イベントの数
#   FROM (SELECT イベント番号
#           FROM イベント
#         EXCEPT
#         SELECT イベント番号
#           FROM 経験イベント)
