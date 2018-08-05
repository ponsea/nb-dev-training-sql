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
