SELECT
  K.名義,
  K.口座番号,
  K.種別,
  K.残高,
  K.更新日
FROM 口座 K
WHERE
  名義 IN (
    SELECT DISTINCT 名義
    FROM 口座 K2
    WHERE
      2 <= (
        SELECT COUNT(*)
        FROM 口座 K3
        WHERE K2.名義 = K3.名義
      )
  )
ORDER BY K.名義, K.口座番号;

# 回答例とだいぶ違っていた。
# 以下回答例

# /* 自己結合を用いた場合 */
# SELECT DISTINCT
#   K1.名義,
#   K1.口座番号,
#   K1.種別,
#   K1.残高,
#   K1.更新日
# FROM 口座 AS K1 JOIN 口座 AS K2 ON K1.名義 = K2.名義
# WHERE K1.口座番号 <> K2.口座番号
# ORDER BY K1.名義, K1.口座番号;
# 
# /* 集計関数と結合を用いた場合 */
# SELECT DISTINCT
#   K1.名義,
#   K1.口座番号,
#   K1.種別,
#   K1.残高,
#   K1.更新日
# FROM
#   口座 AS K1
#   JOIN
#   (
#     SELECT
#       名義,
#       COUNT(名義) AS 口座数
#     FROM 口座
#     GROUP BY 名義
#     HAVING COUNT(名義) > 1
#   ) AS K2
#   ON K1.名義 = K2.名義
# ORDER BY K1.名義, K1.口座番号;
