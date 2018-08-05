SELECT
  E.イベント番号,
  E.イベント名称,
  E.前提イベント番号,
  E2.イベント名称 AS 前提イベント名称
FROM
  イベント E
  INNER JOIN イベント E2
    ON E.前提イベント番号 = E2.イベント番号
;
