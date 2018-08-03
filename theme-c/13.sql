SELECT
  イベント番号,
  イベント名称
FROM
  イベント
WHERE
  前提イベント番号 IS NULL
;
