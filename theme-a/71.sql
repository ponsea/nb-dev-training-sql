SELECT
  K.口座番号,
  K.名義,
  K.残高,
  T.日付,
  T.入金額,
  T.出金額,
  TJ.取引事由名
FROM
  口座 K INNER JOIN 取引 T ON K.口座番号 = T.口座番号
         INNER JOIN 取引事由 TJ ON T.取引事由ID = TJ.取引事由ID
WHERE K.口座番号 = '0887132'
ORDER BY T.日付;
