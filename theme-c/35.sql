SELECT
  名称 AS なまえ,
  HP AS 現在のHP,
  HP * 2 AS 予想されるダメージ
FROM
  パーティー
WHERE
  職業コード = '11'
;
