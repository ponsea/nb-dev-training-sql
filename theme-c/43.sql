# MySQLではCAST関数のキャスト先の型が数値の場合はSIGNEDやUNSIGNEDを指定する
# INTEGERだと怒られた
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

# 回答例
# SELECT 名称 AS なまえ, HP, 状態コード,
#        CASE WHEN HP <= 50 THEN 3 + CAST(状態コード AS INTEGER)
#             WHEN HP >= 51 AND HP <= 100 THEN 2 + CAST(状態コード AS INTEGER)
#             WHEN HP >= 101 AND HP <= 150 THEN 1 + CAST(状態コード AS INTEGER)
#             ELSE CAST(状態コード AS INTEGER)
#        END AS リスク値
#   FROM パーティー
#  ORDER BY リスク値 DESC, HP
