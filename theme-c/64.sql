SELECT
  E.イベント番号,
  E.イベント名称,
  CASE
    WHEN K.クリア区分 IS NULL OR K.クリア区分 = '0' THEN '未クリア'
    ELSE K.クリア区分
  END AS クリア区分
FROM
  イベント E
  LEFT OUTER JOIN 経験イベント K
    ON E.イベント番号 = K.イベント番号
WHERE
  E.タイプ = '1'
;
