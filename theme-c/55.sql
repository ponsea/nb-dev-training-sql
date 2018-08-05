SELECT
  K.イベント番号,
  K.クリア結果
FROM
  経験イベント K
  INNER JOIN (
    SELECT
      *
    FROM
      イベント
    WHERE
      タイプ IN ('1', '3')
  ) E
    ON K.イベント番号 = E.イベント番号
WHERE
  K.クリア区分 = '1'
;
