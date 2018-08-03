SELECT
  イベント番号
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
  イベント番号
;

# 回答例はEXCEPTを使っている
# SELECT イベント番号
#   FROM イベント
# EXCEPT
# SELECT イベント番号
#   FROM 経験イベント
#  ORDER BY 1
