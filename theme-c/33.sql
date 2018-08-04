SELECT
  名称 AS なまえ,
  HP AS 現在のHP,
  HP + 50 AS 装備後のHP
FROM
  パーティー
WHERE
  職業コード IN ('11', '21')
;
