SELECT
  K.イベント番号,
  K.クリア区分,
  CONCAT(C.コード値, ':', C.コード名称) AS クリア結果
FROM
  経験イベント K
  LEFT OUTER JOIN コード C
    ON C.コード種別 = 4
    AND K.クリア結果 = C.コード値
UNION
SELECT
  K.イベント番号,
  K.クリア区分,
  CONCAT(C.コード値, ':', C.コード名称) AS クリア結果
FROM
  経験イベント K
  RIGHT OUTER JOIN (
    SELECT * FROM コード WHERE コード種別 = 4
  ) C
    ON K.クリア結果 = C.コード値
;
