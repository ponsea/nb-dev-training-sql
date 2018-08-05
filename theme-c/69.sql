SELECT
  E.イベント番号,
  E.イベント名称,
  E.前提イベント番号,
  E2.イベント名称 AS 前提イベント名称,
  E.後続イベント番号,
  E3.イベント名称 AS 後続イベント名称
FROM
  イベント E
  LEFT OUTER JOIN イベント E2
    ON E.前提イベント番号 = E2.イベント番号
  LEFT OUTER JOIN イベント E3
    ON E.後続イベント番号 = E3.イベント番号
WHERE
  E.前提イベント番号 IS NOT NULL
  OR E.後続イベント番号 IS NOT NULL
;
