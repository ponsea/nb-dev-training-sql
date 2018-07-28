SELECT K.口座番号, K.名義, K.残高
FROM 口座 K INNER JOIN 取引 T ON K.口座番号 = T.口座番号
WHERE T.日付 = '2011-03-01'

UNION

SELECT HK.口座番号, '解約済み' AS 名義, 0 AS 残高
FROM 廃止口座 HK INNER JOIN 取引 T ON HK.口座番号 = T.口座番号
WHERE T.日付 = '2011-03-01';

# 間違ってはいないと思うが、参考書の回答例とかなり違っていた。
# 回答例によると、廃止口座と対応付ける必要がなかった。
# 以下、参考書の回答例
# SELECT
#   T.口座番号,
#   COALESCE(K.名義, '解約済み') AS 名義,
#   COALESCE(K.残高, 0) AS 残高
# FROM
#   取引 AS T LEFT JOIN 口座 AS K ON T.口座番号 = K.口座番号
# WHERE
#   T.日付 = '2011-03-01';
