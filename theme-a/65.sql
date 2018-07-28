SELECT
  K.口座番号,
  TJ.取引事由名,
  COALESCE(T.入金額, T.出金額) AS 取引金額
FROM
  口座 K INNER JOIN 取引 T      ON K.口座番号 = T.口座番号 # 口座テーブルを使う必要なかった
         INNER JOIN 取引事由 TJ ON T.取引事由ID = TJ.取引事由ID
WHERE K.口座番号 IN ('0311240', '1234161', '1750902')
ORDER BY K.口座番号, T.取引番号;
