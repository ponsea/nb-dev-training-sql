SELECT
  名称,
  MP
FROM
  パーティー
WHERE
  MP = (SELECT MAX(MP) FROM パーティー)
;
