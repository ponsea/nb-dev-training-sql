SELECT
  SUBSTRING(ID, 1, 1) AS IDによる分類,
  AVG(HP) AS HPの平均,
  AVG(MP) AS MPの平均
FROM
  パーティー
GROUP BY
  SUBSTRING(ID, 1, 1)
HAVING
  AVG(HP) > 100 # 見落としてた。
;
