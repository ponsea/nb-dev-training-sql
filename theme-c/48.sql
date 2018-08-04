SELECT
  CASE
    WHEN SUM(MP) < 500 THEN '敵は見とれている！'
    WHEN SUM(MP) < 1000 THEN '敵は呆然としている！'
    ELSE '敵はひれ伏している！'
  END AS 敵の行動
FROM
  パーティー
;

# CASE分の条件に集約関数書けるんだ...
