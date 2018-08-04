SELECT
  名称 AS なまえ,
  HP,
  状態コード,
  CASE
    WHEN HP <= 50 THEN 3
    WHEN HP <= 100 THEN 2
    WHEN HP <= 150 THEN 1
    ELSE 0
  END + CAST(状態コード AS SIGNED) AS リスク値
FROM
  パーティー
ORDER BY
  リスク値 DESC,
  HP
;
