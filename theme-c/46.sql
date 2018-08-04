SELECT
  CASE タイプ
    WHEN '1' THEN '強制'
    WHEN '2' THEN 'フリー'
    WHEN '3' THEN '特殊'
  END AS タイプ,
  COUNT(*) AS イベント数
FROM
  イベント
GROUP BY
  タイプ
;

