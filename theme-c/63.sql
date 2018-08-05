SELECT
  E.イベント番号,
  E.イベント名称,
  K.クリア区分
FROM
  イベント E
  INNER JOIN 経験イベント K
    ON E.イベント番号 = K.イベント番号
WHERE
  E.タイプ = '1'
;
