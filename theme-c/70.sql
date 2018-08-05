SELECT
  E.イベント番号,
  E.イベント名称,
  COUNT(*) AS 前提イベント数
FROM
  イベント E
  INNER JOIN イベント E2
    ON E.イベント番号 = E2.前提イベント番号
GROUP BY
  E.イベント番号,
  E.イベント名称
;
