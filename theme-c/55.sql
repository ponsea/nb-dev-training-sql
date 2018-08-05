SELECT
  K.イベント番号,
  K.クリア結果
FROM
  経験イベント K
  INNER JOIN (
    SELECT
      *
    FROM
      イベント
    WHERE
      タイプ IN ('1', '3')
  ) E
    ON K.イベント番号 = E.イベント番号
WHERE
  K.クリア区分 = '1'
;
# 回答例
# SELECT イベント番号, クリア結果
#   FROM 経験イベント
#  WHERE クリア区分 = '1'
#    AND イベント番号 IN (SELECT イベント番号
#                        FROM イベント
#                       WHERE タイプ IN ('1', '3'))
