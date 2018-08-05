SELECT
  P.ID,
  COALESCE(P.名称, '(仲間になっていない！)') AS なまえ,
  C.コード名称 AS 職業
FROM
  パーティー P
  RIGHT OUTER JOIN (
    SELECT * FROM コード WHERE コード種別 = '1'
  ) C
    ON P.職業コード = C.コード値
;
