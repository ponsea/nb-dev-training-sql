SELECT
  E.イベント番号,
  E.イベント名称
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
ORDER BY
  E.イベント番号
;

# 回答例(NOT IN句を使っている)
# SELECT イベント番号, イベント名称
#   FROM イベント
#  WHERE イベント番号 NOT IN (SELECT イベント番号
#                            FROM 経験イベント)
#  ORDER BY イベント番号
