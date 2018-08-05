SELECT
  K.ルート番号,
  K.イベント番号,
  E.イベント名称,
  K.クリア結果
FROM
  経験イベント K
  INNER JOIN イベント E
    ON K.イベント番号 = E.イベント番号
WHERE
  K.クリア区分 = '1'
ORDER BY
  K.ルート番号
;
