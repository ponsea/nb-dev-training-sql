SELECT
  MAX(HP),
  MAX(MP),
  MIN(HP),
  MIN(MP),
  AVG(HP),
  AVG(MP)
FROM
  パーティー
GROUP BY
  SUBSTRING(職業コード, 1, 1)
;
