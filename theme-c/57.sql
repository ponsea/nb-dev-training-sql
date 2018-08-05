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
