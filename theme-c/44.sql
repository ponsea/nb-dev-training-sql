SELECT
  COALESCE(前提イベント番号, '前提なし') AS 前提イベント番号,
  イベント番号,
  COALESCE(後続イベント番号, '後続なし') AS 後続イベント番号
FROM
  イベント
ORDER BY
  イベント番号
;
