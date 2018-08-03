# 問題では集合演算を使えと書いているが、MySQLにINTERSECTはないので不可能
SELECT
  イベント番号
FROM
  イベント E
WHERE
  タイプ = '2'
  AND EXISTS (
    SELECT
      *
    FROM
      経験イベント K
    WHERE
      E.イベント番号 = K.イベント番号
      AND クリア区分 = '1'
  )
;
