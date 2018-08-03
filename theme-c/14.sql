SELECT
  イベント番号,
  イベント名称,
  後続イベント番号
FROM
  イベント
WHERE
  後続イベント番号 IS NOT NULL
;
