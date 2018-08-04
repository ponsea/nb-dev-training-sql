SELECT
  名称 AS なまえ,
  HP AS 現在のHP,
  CHAR_LENGTH(名称) * 10 AS 予想ダメージ
FROM
  パーティー
;
