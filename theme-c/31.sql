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
