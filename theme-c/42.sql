SELECT
  名称 AS なまえ,
  HP,
  POW(HP, 0) AS 攻撃1回目,
  POW(HP, 1) AS 攻撃2回目,
  POW(HP, 2) AS 攻撃3回目
FROM
  パーティー
WHERE
  職業コード = '10'
;
