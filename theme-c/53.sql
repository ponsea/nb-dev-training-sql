SELECT
  名称 AS なまえ,
  HP AS 現在のHP,
  ROUND(
    HP / (SELECT SUM(HP) FROM パーティー) * 100,
    1
  )  AS `パーティーでの割合(%)`
FROM
  パーティー
WHERE
  職業コード = '01'
;
