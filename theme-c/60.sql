SELECT
  イベント番号,
  イベント名称,
  前提イベント番号
FROM
  イベント
WHERE
  前提イベント番号 IN (
    SELECT
      イベント番号
    FROM
      経験イベント
    WHERE
      クリア区分 = '1'
  )
;
