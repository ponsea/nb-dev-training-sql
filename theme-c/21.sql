SELECT
  *
FROM
  イベント
WHERE
  タイプ = '1'
  AND 前提イベント番号 IS NOT NULL
  AND 後続イベント番号 IS NOT NULL
;
